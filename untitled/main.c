#include <hwloc.h>
#include <errno.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <CL/cl_ext.h>
#include <sys/syscall.h>
#include <CL/cl.h>
#include "C_common/err_code.h"


static inline int getcpu() {
#ifdef SYS_getcpu
    int cpu, status;
    status = syscall(SYS_getcpu, &cpu, NULL, NULL);
    return (status == -1) ? status : cpu;
#else
    return -1; // unavailable
#endif
}


int main(void)
{
    int my_cpu = getcpu();

    printf("MY CPU IS: %d \n", my_cpu);


    cl_int err;
    // Find the number of OpenCL platforms
    cl_uint num_platforms;
    err = clGetPlatformIDs(0, NULL, &num_platforms);
    checkError(err, "Finding platforms");
    if (num_platforms == 0)
    {
        printf("Found 0 platforms!\n");
        return EXIT_FAILURE;
    }
    // Create a list of platform IDs
    cl_platform_id platform[num_platforms];
    err = clGetPlatformIDs(num_platforms, platform, NULL);
    checkError(err, "Getting platforms");

    printf("Number of OpenCL platforms: %d\n", num_platforms);

    int dim =100;
    int plat_dev_pci_num[dim][dim];// dim 1- #ofPlatform, dim 2-#ofDevice

    for(int i =0; i<dim; i++)
        for(int j =0; j<dim; j++)
                plat_dev_pci_num[i][j] =-1;

    // Investigate each platform
    for (int i = 0; i < num_platforms; i++)
    {

        // Count the number of devices in the platform
        cl_uint num_devices;
        err = clGetDeviceIDs(platform[i], CL_DEVICE_TYPE_ALL, 0, NULL, &num_devices);
        checkError(err, "Finding devices");

        // Get the device IDs
        cl_device_id device[num_devices];
        err = clGetDeviceIDs(platform[i], CL_DEVICE_TYPE_ALL, num_devices, device, NULL);
        checkError(err, "Getting devices");
        printf("Number of devices: %d\n", num_devices);

        // Investigate each device
        for (int j = 0; j < num_devices; j++)
        {

            cl_uint adbit =0;
             clGetDeviceInfo( device[j], CL_DEVICE_VENDOR_ID,sizeof(adbit), &adbit, NULL);

            plat_dev_pci_num[i][j]=(int)adbit;
            printf("\t\tCL_DEVICE_VENDOR_ID : %x\n", (int)adbit);

        }
    }

    for(int i =0; i<dim; i++)
        for(int j =0; j<dim; j++) {

        if ( plat_dev_pci_num[i][j]  !=-1)
            printf("Platform %d, device %d, number: %x \n",i,j,plat_dev_pci_num[i][j]);
        }


    /************************
    HWLOC PART
    ***********************/

    printf("\t-------------------------\n");
    unsigned i;
    char string[128];

    hwloc_topology_t topology;
    hwloc_topology_init(&topology);
    hwloc_topology_set_flags(topology, HWLOC_TOPOLOGY_FLAG_IO_DEVICES);
    hwloc_topology_load(topology);

    /*
     //  DISPLAY DEVICES AS TREE
    int depth;
    int topodepth;
    topodepth = hwloc_topology_get_depth(topology);


    for (depth = 0; depth < topodepth; depth++) {
        printf("*** Objects at level %d\n", depth);
        for (i = 0; i < hwloc_get_nbobjs_by_depth(topology, depth);
             i++) {
            hwloc_obj_type_snprintf(string, sizeof(string),
                                    hwloc_get_obj_by_depth(topology, depth, i), 0);
            printf("Index %u: %s\n", i, string);
        }
    }

*/

    int depyhNUM = hwloc_get_type_depth(topology,HWLOC_OBJ_PACKAGE   );
    int howManyMachines = hwloc_get_nbobjs_by_depth(topology, depyhNUM);

    for (i = 0; i < howManyMachines; i++) {
        hwloc_obj_t objMachine = hwloc_get_obj_by_depth(topology, depyhNUM, i);

        printf("Machine info: %x \n", objMachine->attr->pcidev.vendor_id);


    }

    printf("how NUM %d \n", howManyMachines);
    printf("depyh NUM %d \n", depyhNUM);




    int depthPCI =hwloc_get_type_depth(topology,HWLOC_OBJ_PCI_DEVICE);
    printf("DEPTH OF PCI %d \n", depthPCI);


    for (i = 0; i < hwloc_get_nbobjs_by_depth(topology, depthPCI);
         i++) {
        hwloc_obj_type_snprintf(string, sizeof(string),
                                hwloc_get_obj_by_depth(topology, depthPCI, i), 0);
        hwloc_obj_t objPCI = hwloc_get_obj_by_depth(topology, depthPCI, i);


        printf("VENDOR ID FROM HWLOC: %x \n",  objPCI->attr->pcidev.vendor_id);

    //    printf("PARENT  %s \n",  objPCI->parent->name);
   //     printf("Index %u: %s\n", i, string);

    }

     hwloc_topology_destroy(topology);

    return 0;
}

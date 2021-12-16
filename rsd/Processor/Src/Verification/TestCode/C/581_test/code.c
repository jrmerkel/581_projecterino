/* C program for Merge Sort */
#include <stdio.h>
#include <stdlib.h>
// Merges two subarrays of arr[].
// First subarray is arr[l..m]
// Second subarray is arr[m+1..r]
void merge(int arr[], int l, int m, int r)
{
    int i, j, k;
    int n1 = m - l + 1;
    int n2 = r - m;
  
    /* create temp arrays */
    int L[n1], R[n2];
  
    /* Copy data to temp arrays L[] and R[] */
    for (i = 0; i < n1; i++)
        L[i] = arr[l + i];
    for (j = 0; j < n2; j++)
        R[j] = arr[m + 1 + j];
  
    /* Merge the temp arrays back into arr[l..r]*/
    i = 0; // Initial index of first subarray
    j = 0; // Initial index of second subarray
    k = l; // Initial index of merged subarray
    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        }
        else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }
  
    /* Copy the remaining elements of L[], if there
    are any */
    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
  
    /* Copy the remaining elements of R[], if there
    are any */
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
}
  
/* l is for left index and r is right index of the
sub-array of arr to be sorted */
void mergeSort(int arr[], int l, int r)
{
    if (l < r) {
        // Same as (l+r)/2, but avoids overflow for
        // large l and h
        int m = l + (r - l) / 2;
  
        // Sort first and second halves
        mergeSort(arr, l, m);
        mergeSort(arr, m + 1, r);
  
        merge(arr, l, m, r);
    }
}
  
/* Driver code */
int main()
{
    int arr[] = { 12, 11, 13, 5, 6, 7, 9383, 886, 2777, 6915, 7793, 8335, 5386, 492, 6649, 1421, 2362, 27, 8690, 59, 7763, 3926, 540, 3426, 9172, 5736, 5211, 5368, 2567, 6429, 5782, 1530, 2862, 5123, 4067, 3135, 3929, 9802, 4022, 3058, 3069, 8167, 1393, 8456, 5011, 8042, 6229, 7373, 4421, 4919, 3784, 8537, 5198, 4324, 8315, 4370, 6413, 3526, 6091, 8980, 9956, 1873, 6862, 9170, 6996, 7281, 2305, 925, 7084, 6327, 336, 6505, 846, 1729, 1313, 5857, 6124, 3895, 9582, 545, 8814, 3367, 5434, 364, 4043, 3750, 1087, 6808, 7276, 7178, 5788, 3584, 5403, 2651, 2754, 2399, 9932, 5060, 9676, 3368, 7739, 12, 6226, 8586, 8094, 7539, 795, 570, 1434, 378, 7467, 6601, 97, 2902, 3317, 492, 6652, 756, 7301, 280, 4286, 9441, 3865, 9689, 8444, 6619, 8440, 4729, 8031, 8117, 8097, 5771, 4481, 675, 709, 8927, 4567, 7856, 9497, 2353, 4586, 6965, 5306, 4683, 6219, 8624, 1528, 2871, 5732, 8829, 9503, 19, 8270, 3368, 9708, 6715, 6340, 8149, 7796, 723, 2618, 2245, 2846, 3451, 2921, 3555, 2379, 7488, 7764, 8228, 9841, 2350, 5193, 1500, 7034, 7764, 124, 4914, 6987, 5856, 3743, 6491, 2227, 8365, 9859, 1936, 1432, 2551, 6437, 9228, 3275, 5407, 1474, 6121, 8858, 4395, 6029, 1237, 8235, 3793, 5818, 4428, 6143, 1011, 5928, 9529, 8776, 2404, 4443, 5763, 4613, 4538, 8606, 6840, 2904, 4818, 5128, 688, 7369, 7917, 9917, 6996, 3324, 7743, 9470, 2183, 8490, 5499, 9772, 6725, 5644, 5590, 7505, 8139, 2954, 9786, 7669, 8082, 8542, 8464, 197, 9507, 9355, 8804, 6348, 8611, 3622, 7828, 9299, 7343, 5746, 5568, 4340, 5422, 3311, 3810, 7605, 1801, 5661, 3730, 4878, 1305, 9320, 8736, 9444, 8626, 8522, 3465, 6708, 3416, 8282, 3258, 2924, 7637, 2062, 5624, 2600, 2036, 3452, 1899, 9379, 5550, 7468, 71, 973, 7131, 3881, 4930, 8933, 5894, 8660, 163, 7199, 7981, 8899, 2996, 2959, 3773, 2813, 9668, 7190, 1095, 2926, 6466, 5084, 1340, 2090, 7684, 3376, 5542, 5936, 9107, 7445, 9756, 9179, 8418, 6887, 9412, 3348, 2172, 1659, 2009, 2336, 5210, 6342, 7587, 8206, 9301, 7713, 7372, 5321, 1255, 4819, 4599, 7721, 9904, 5939, 9811, 3940, 5667, 1705, 6228, 1127, 9150, 5984, 6658, 3920, 9224, 2422, 7269, 1396, 4081, 5630, 84, 9292, 1972, 7672, 3850, 7625, 5385, 1222, 9299, 6640, 6042, 3898, 713, 2298, 6190, 524, 2590, 8209, 8581, 8819, 9336, 7732, 1155, 5994, 8004, 379, 4769, 5273, 1776, 8850, 7255, 1860, 8142, 5579, 5884, 1993, 3205, 7621, 9567, 2504, 613, 1961, 2754, 1326, 4259, 8944, 8202, 3202, 3506, 6784, 2021, 2842, 868, 9528, 5189, 8872, 9908, 9958, 498, 8036, 8808, 7753, 6248, 3303, 3333, 2133, 1648, 2890, 9754, 7567, 1746, 368, 9529, 4500, 8046, 3788, 9797, 6249, 6990, 3303, 3033, 5363, 2497, 253, 4892, 7686, 9125, 1152, 3996, 5975, 9188, 9157, 3729, 5436, 2460, 3414, 3921, 460, 6304, 28, 8027, 8050, 6748, 7556, 8902, 4794, 7697, 8699, 1043, 1039, 2002, 428, 6403, 4500, 681, 7647, 8538, 6159, 5151, 2535, 2134, 4339, 1692, 2215, 6127, 504, 5629, 49, 964, 8285, 6429, 5343, 6335, 3177, 2900, 5238, 7971, 6949, 289, 5367, 7988, 2292, 5795, 743, 3144, 2829, 8390, 1682, 5340, 3541, 569, 3826, 4232, 2261, 6042, 360, 9117, 8023, 6761, 81, 6309, 3190, 5425, 8996, 6367, 4677, 4234, 690, 1626, 4524, 6057, 9614, 3168, 8205, 358, 6312, 7386, 5100, 4346, 2726, 4994, 4916, 6552, 5578, 3529, 8946, 2290, 2647, 6970, 9051, 9080, 9631, 8593, 857, 8627, 1312, 1886, 9214, 8355, 3512, 90, 4412, 9479, 9610, 8969, 6189, 2274, 6355, 7641, 6620, 5433, 8987, 7888, 8338, 4566, 7770, 7284, 6856, 417, 606, 2260, 5849, 237, 7205, 3059, 5217, 8518, 4945, 783, 6873, 8458, 873, 7637, 4289, 483, 6607, 478, 2757, 9314, 4471, 5729, 1100, 3459, 3618, 9438, 8025, 1388, 3074, 1233, 8157, 3681, 3493, 358, 270, 699, 3417, 1839, 5569, 8363, 2622, 8794, 3173, 9847, 6431, 7462, 6682, 9390, 4292, 5791, 5057, 5115, 1521, 6157, 8574, 1491, 1947, 2951, 9231, 5021, 537, 3740, 5054, 4030, 4098, 5325, 1081, 7516, 3516, 3002, 2231, 6139, 1796, 5404, 2338, 4580, 9218, 9021, 3970, 9862, 4812, 5379, 4977, 2685, 1536, 9904, 4176, 3483, 9207, 9759, 4857, 9744, 3499, 9911, 127, 3950, 5236, 7560, 7818, 5105, 563, 49, 1244, 8711, 1805, 9934, 3291, 7375, 8955, 3614, 3589, 3768, 8993, 4918, 2805, 6882, 4822, 6982, 6717, 4030, 3093, 1574, 126, 6593, 1486, 253, 543, 3074, 7814, 4713, 8179, 8377, 4762, 5775, 7088, 2919, 5710, 6732, 294, 1017, 346, 235, 1137, 5691, 5153, 3943, 2573, 6328, 925, 9291, 6710, 4018, 7217, 6836, 6963, 5055, 7090, 3858, 8130, 4904, 8571, 2661, 9633, 9685, 4789, 3073, 2604, 6851, 9805, 9250, 7868, 6503, 9485, 9006, 2195, 4639, 2949, 1120, 967, 226, 6763, 7677, 596, 3981, 865, 7560, 9036, 7955, 7770, 3518, 9211, 6342, 2532, 5196, 2379, 7321, 8270, 4984, 4172, 4427, 4234, 2040, 7283, 72, 7398, 5830, 1063, 347, 6950, 2030, 573, 3714, 6059, 7522, 4047, 6924, 5082, 9435, 1232, 9204, 2954, 443, 1898, 5486, 5640, 4278, 9159, 262, 9262, 9683, 1041, 9848, 1723, 8324, 6272, 9122, 4154, 7335, 5821, 7457, 9365, 2747, 1171, 1776, 269, 5218, 8701, 1703, 4653, 9933, 907, 3959, 6728, 2806, 5797, 8720, 7084, 1308, 5334, 2698, 991, 6376, 8898, 2715, 1052, 5171, 8189, 1559, 2506, 4010, 9016, 8224, 3109, 6539, 0, 3378, 8109, 5053, 5081, 9114, 1338, 5989, 9426, 8067, 5147, 5223, 6787, 2231, 6532, 2122, 1281, 3875, 4850, 179, 6590, 2254, 5350, 1131, 3813, 7857, 1494, 9181, 6081, 4603, 5720, 2433, 7982, 181, 7487, 9415, 9296, 8825, 5404, 8722, 6892, 551, 297, 32, 9134, 3181, 8506, 415, 7057, 9708, 595, 9999, 1962, 2297, 7483, 5776, 154, 8977, 1309, 2587, 9932, 3382, 5021, 4266, 3563, 8860, 3682, 9211, 7685, 9086, 4285, 930, 5990, 4583, 7314, 1476, 4116, 5820, 1892, 7525, 5528, 8839, 7525, 7490, 1136, 1360, 9618, 7643, 337, 928, 6582, 6621, 4310, 7955, 888, 4225, 6815, 4570, 3437, 853, 8, 7722, 1783, 2350, 8657, 9097, 3827, 9126, 1269, 2071, 6651, 3149, 910, 528, 639, 8398, 1888, 6610, 2393, 8577, 3890, 8976, 5199, 4552, 6931, 6087, 8777, 99, 657, 8566, 952, 7017, 2641, 2735, 9368, 1298, 8184, 3195, 6776, 5805, 5266, 3428, 8954, 2528, 308, 9593, 7278, 2197, 2555, 9672, 774, 6445, 5000, 2325, 997, 8283, 8412, 6127, 8382, 5421 };
    int arr_size = sizeof(arr) / sizeof(arr[0]);
    int i = 0;
    int j = 0;
    for (i =0; i < 10000; i++)
    {
	j++;    
    }
  
    mergeSort(arr, 0, arr_size - 1);
    towers();
    return 0;
}
#define NUM_DISCS  7

//--------------------------------------------------------------------------
// List data structure and functions

struct Node
{
  int val;
  struct Node* next;
};

struct List
{
  int size;
  struct Node* head;
};

struct List g_nodeFreeList;
struct Node g_nodePool[NUM_DISCS];

int list_getSize( struct List* list )
{
  return list->size;
}

void list_init( struct List* list )
{
  list->size = 0;
  list->head = 0;
}

void list_push( struct List* list, int val )
{
  struct Node* newNode;

  // Pop the next free node off the free list
  newNode = g_nodeFreeList.head;
  g_nodeFreeList.head = g_nodeFreeList.head->next;

  // Push the new node onto the given list
  newNode->next = list->head;
  list->head = newNode;

  // Assign the value
  list->head->val = val;

  // Increment size
  list->size++;

}

int list_pop( struct List* list )
{
  struct Node* freedNode;
  int val;

  // Get the value from the->head of given list
  val = list->head->val;

  // Pop the head node off the given list
  freedNode = list->head;
  list->head = list->head->next;

  // Push the freed node onto the free list
  freedNode->next = g_nodeFreeList.head;
  g_nodeFreeList.head = freedNode;

  // Decrement size
  list->size--;

  return val;
}

void list_clear( struct List* list )
{
  while ( list_getSize(list) > 0 )
    list_pop(list);
}

//--------------------------------------------------------------------------
// Tower data structure and functions

struct Towers
{
  int numDiscs;
  int numMoves;
  struct List pegA;
  struct List pegB;
  struct List pegC;
};

void towers_init( struct Towers* this, int n )
{
  int i;

  this->numDiscs = n;
  this->numMoves = 0;

  list_init( &(this->pegA) );
  list_init( &(this->pegB) );
  list_init( &(this->pegC) );

  for ( i = 0; i < n; i++ )
    list_push( &(this->pegA), n-i );

}

void towers_clear( struct Towers* this )
{

  list_clear( &(this->pegA) );
  list_clear( &(this->pegB) );
  list_clear( &(this->pegC) );

  towers_init( this, this->numDiscs );

}

void towers_solve_h( struct Towers* this, int n,
                     struct List* startPeg,
                     struct List* tempPeg,
                     struct List* destPeg )
{
  int val;

  if ( n == 1 ) {
    val = list_pop(startPeg);
    list_push(destPeg,val);
    this->numMoves++;
  }
  else {
    towers_solve_h( this, n-1, startPeg, destPeg,  tempPeg );
    towers_solve_h( this, 1,   startPeg, tempPeg,  destPeg );
    towers_solve_h( this, n-1, tempPeg,  startPeg, destPeg );
  }

}

void towers_solve( struct Towers* this )
{
  towers_solve_h( this, this->numDiscs, &(this->pegA), &(this->pegB), &(this->pegC) );
}

int towers_verify( struct Towers* this )
{
  struct Node* ptr;
  int numDiscs = 0;

  if ( list_getSize(&this->pegA) != 0 ) {
    return 2;
  }

  if ( list_getSize(&this->pegB) != 0 ) {
    return 3;
  }

  if ( list_getSize(&this->pegC) != this->numDiscs ) {
    return 4;
  }

  for ( ptr = this->pegC.head; ptr != 0; ptr = ptr->next ) {
    numDiscs++;
    if ( ptr->val != numDiscs ) {
      return 5;
    }
  }

  if ( this->numMoves != ((1 << this->numDiscs) - 1) ) {
    return 6;
  }

  return 0;
}

//--------------------------------------------------------------------------
// Main

int towers()
{
  struct Towers towers;
  int i;

  // Initialize free list

  list_init( &g_nodeFreeList );
  g_nodeFreeList.head = &(g_nodePool[0]);
  g_nodeFreeList.size = NUM_DISCS;
  g_nodePool[NUM_DISCS-1].next = 0;
  g_nodePool[NUM_DISCS-1].val = 99;
  for ( i = 0; i < (NUM_DISCS-1); i++ ) {
    g_nodePool[i].next = &(g_nodePool[i+1]);
    g_nodePool[i].val = i;
  }

  towers_init( &towers, NUM_DISCS );

  // If needed we preallocate everything in the caches

#if PREALLOCATE
  towers_solve( &towers );
#endif

  // Solve it

  towers_clear( &towers );
 // setStats(1);
  towers_solve( &towers );
  //setStats(0);

  // Check the results
  return towers_verify( &towers );
}

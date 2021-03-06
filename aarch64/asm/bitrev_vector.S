#include "functions.S"
#include "push_pop.S"
#include "reductions.S"
#include "repeat.S"

.text

function bitrev_vector_asm
// void bitrev_vector(uint16_t* poly);

  // inputs:
  // x0: (uint16_t *) poly: points to beginning of in-out array, 1024 elements

  // occupation of regular registers:
  // x0: pointer to array poly
  // x1-x7: unused
  // x8-x9: temporary registers
  // x4-x29: unused
  // x30: link register -> contains return address


  // safe register contents
  // x19 - x29 and v8 - v15 (bottom 64-bit -> d8-d15) if used
  // here: none

  .macro swap_pair a, b
    ldrh  w8, [x0, 2*(a)]
    ldrh  w9, [x0, 2*(b)]
    strh  w8, [x0, 2*(b)]
    strh  w9, [x0, 2*(a)]
  .endm


  swap_pair 1, 512
  swap_pair 2, 256
  swap_pair 3, 768
  swap_pair 4, 128
  swap_pair 5, 640
  swap_pair 6, 384
  swap_pair 7, 896
  swap_pair 8, 64
  swap_pair 9, 576
  swap_pair 10, 320
  swap_pair 11, 832
  swap_pair 12, 192
  swap_pair 13, 704
  swap_pair 14, 448
  swap_pair 15, 960
  swap_pair 16, 32
  swap_pair 17, 544
  swap_pair 18, 288
  swap_pair 19, 800
  swap_pair 20, 160
  swap_pair 21, 672
  swap_pair 22, 416
  swap_pair 23, 928
  swap_pair 24, 96
  swap_pair 25, 608
  swap_pair 26, 352
  swap_pair 27, 864
  swap_pair 28, 224
  swap_pair 29, 736
  swap_pair 30, 480
  swap_pair 31, 992
  swap_pair 33, 528
  swap_pair 34, 272
  swap_pair 35, 784
  swap_pair 36, 144
  swap_pair 37, 656
  swap_pair 38, 400
  swap_pair 39, 912
  swap_pair 40, 80
  swap_pair 41, 592
  swap_pair 42, 336
  swap_pair 43, 848
  swap_pair 44, 208
  swap_pair 45, 720
  swap_pair 46, 464
  swap_pair 47, 976
  swap_pair 49, 560
  swap_pair 50, 304
  swap_pair 51, 816
  swap_pair 52, 176
  swap_pair 53, 688
  swap_pair 54, 432
  swap_pair 55, 944
  swap_pair 56, 112
  swap_pair 57, 624
  swap_pair 58, 368
  swap_pair 59, 880
  swap_pair 60, 240
  swap_pair 61, 752
  swap_pair 62, 496
  swap_pair 63, 1008
  swap_pair 65, 520
  swap_pair 66, 264
  swap_pair 67, 776
  swap_pair 68, 136
  swap_pair 69, 648
  swap_pair 70, 392
  swap_pair 71, 904
  swap_pair 73, 584
  swap_pair 74, 328
  swap_pair 75, 840
  swap_pair 76, 200
  swap_pair 77, 712
  swap_pair 78, 456
  swap_pair 79, 968
  swap_pair 81, 552
  swap_pair 82, 296
  swap_pair 83, 808
  swap_pair 84, 168
  swap_pair 85, 680
  swap_pair 86, 424
  swap_pair 87, 936
  swap_pair 88, 104
  swap_pair 89, 616
  swap_pair 90, 360
  swap_pair 91, 872
  swap_pair 92, 232
  swap_pair 93, 744
  swap_pair 94, 488
  swap_pair 95, 1000
  swap_pair 97, 536
  swap_pair 98, 280
  swap_pair 99, 792
  swap_pair 100, 152
  swap_pair 101, 664
  swap_pair 102, 408
  swap_pair 103, 920
  swap_pair 105, 600
  swap_pair 106, 344
  swap_pair 107, 856
  swap_pair 108, 216
  swap_pair 109, 728
  swap_pair 110, 472
  swap_pair 111, 984
  swap_pair 113, 568
  swap_pair 114, 312
  swap_pair 115, 824
  swap_pair 116, 184
  swap_pair 117, 696
  swap_pair 118, 440
  swap_pair 119, 952
  swap_pair 121, 632
  swap_pair 122, 376
  swap_pair 123, 888
  swap_pair 124, 248
  swap_pair 125, 760
  swap_pair 126, 504
  swap_pair 127, 1016
  swap_pair 129, 516
  swap_pair 130, 260
  swap_pair 131, 772
  swap_pair 133, 644
  swap_pair 134, 388
  swap_pair 135, 900
  swap_pair 137, 580
  swap_pair 138, 324
  swap_pair 139, 836
  swap_pair 140, 196
  swap_pair 141, 708
  swap_pair 142, 452
  swap_pair 143, 964
  swap_pair 145, 548
  swap_pair 146, 292
  swap_pair 147, 804
  swap_pair 148, 164
  swap_pair 149, 676
  swap_pair 150, 420
  swap_pair 151, 932
  swap_pair 153, 612
  swap_pair 154, 356
  swap_pair 155, 868
  swap_pair 156, 228
  swap_pair 157, 740
  swap_pair 158, 484
  swap_pair 159, 996
  swap_pair 161, 532
  swap_pair 162, 276
  swap_pair 163, 788
  swap_pair 165, 660
  swap_pair 166, 404
  swap_pair 167, 916
  swap_pair 169, 596
  swap_pair 170, 340
  swap_pair 171, 852
  swap_pair 172, 212
  swap_pair 173, 724
  swap_pair 174, 468
  swap_pair 175, 980
  swap_pair 177, 564
  swap_pair 178, 308
  swap_pair 179, 820
  swap_pair 181, 692
  swap_pair 182, 436
  swap_pair 183, 948
  swap_pair 185, 628
  swap_pair 186, 372
  swap_pair 187, 884
  swap_pair 188, 244
  swap_pair 189, 756
  swap_pair 190, 500
  swap_pair 191, 1012
  swap_pair 193, 524
  swap_pair 194, 268
  swap_pair 195, 780
  swap_pair 197, 652
  swap_pair 198, 396
  swap_pair 199, 908
  swap_pair 201, 588
  swap_pair 202, 332
  swap_pair 203, 844
  swap_pair 205, 716
  swap_pair 206, 460
  swap_pair 207, 972
  swap_pair 209, 556
  swap_pair 210, 300
  swap_pair 211, 812
  swap_pair 213, 684
  swap_pair 214, 428
  swap_pair 215, 940
  swap_pair 217, 620
  swap_pair 218, 364
  swap_pair 219, 876
  swap_pair 220, 236
  swap_pair 221, 748
  swap_pair 222, 492
  swap_pair 223, 1004
  swap_pair 225, 540
  swap_pair 226, 284
  swap_pair 227, 796
  swap_pair 229, 668
  swap_pair 230, 412
  swap_pair 231, 924
  swap_pair 233, 604
  swap_pair 234, 348
  swap_pair 235, 860
  swap_pair 237, 732
  swap_pair 238, 476
  swap_pair 239, 988
  swap_pair 241, 572
  swap_pair 242, 316
  swap_pair 243, 828
  swap_pair 245, 700
  swap_pair 246, 444
  swap_pair 247, 956
  swap_pair 249, 636
  swap_pair 250, 380
  swap_pair 251, 892
  swap_pair 253, 764
  swap_pair 254, 508
  swap_pair 255, 1020
  swap_pair 257, 514
  swap_pair 259, 770
  swap_pair 261, 642
  swap_pair 262, 386
  swap_pair 263, 898
  swap_pair 265, 578
  swap_pair 266, 322
  swap_pair 267, 834
  swap_pair 269, 706
  swap_pair 270, 450
  swap_pair 271, 962
  swap_pair 273, 546
  swap_pair 274, 290
  swap_pair 275, 802
  swap_pair 277, 674
  swap_pair 278, 418
  swap_pair 279, 930
  swap_pair 281, 610
  swap_pair 282, 354
  swap_pair 283, 866
  swap_pair 285, 738
  swap_pair 286, 482
  swap_pair 287, 994
  swap_pair 289, 530
  swap_pair 291, 786
  swap_pair 293, 658
  swap_pair 294, 402
  swap_pair 295, 914
  swap_pair 297, 594
  swap_pair 298, 338
  swap_pair 299, 850
  swap_pair 301, 722
  swap_pair 302, 466
  swap_pair 303, 978
  swap_pair 305, 562
  swap_pair 307, 818
  swap_pair 309, 690
  swap_pair 310, 434
  swap_pair 311, 946
  swap_pair 313, 626
  swap_pair 314, 370
  swap_pair 315, 882
  swap_pair 317, 754
  swap_pair 318, 498
  swap_pair 319, 1010
  swap_pair 321, 522
  swap_pair 323, 778
  swap_pair 325, 650
  swap_pair 326, 394
  swap_pair 327, 906
  swap_pair 329, 586
  swap_pair 331, 842
  swap_pair 333, 714
  swap_pair 334, 458
  swap_pair 335, 970
  swap_pair 337, 554
  swap_pair 339, 810
  swap_pair 341, 682
  swap_pair 342, 426
  swap_pair 343, 938
  swap_pair 345, 618
  swap_pair 346, 362
  swap_pair 347, 874
  swap_pair 349, 746
  swap_pair 350, 490
  swap_pair 351, 1002
  swap_pair 353, 538
  swap_pair 355, 794
  swap_pair 357, 666
  swap_pair 358, 410
  swap_pair 359, 922
  swap_pair 361, 602
  swap_pair 363, 858
  swap_pair 365, 730
  swap_pair 366, 474
  swap_pair 367, 986
  swap_pair 369, 570
  swap_pair 371, 826
  swap_pair 373, 698
  swap_pair 374, 442
  swap_pair 375, 954
  swap_pair 377, 634
  swap_pair 379, 890
  swap_pair 381, 762
  swap_pair 382, 506
  swap_pair 383, 1018
  swap_pair 385, 518
  swap_pair 387, 774
  swap_pair 389, 646
  swap_pair 391, 902
  swap_pair 393, 582
  swap_pair 395, 838
  swap_pair 397, 710
  swap_pair 398, 454
  swap_pair 399, 966
  swap_pair 401, 550
  swap_pair 403, 806
  swap_pair 405, 678
  swap_pair 406, 422
  swap_pair 407, 934
  swap_pair 409, 614
  swap_pair 411, 870
  swap_pair 413, 742
  swap_pair 414, 486
  swap_pair 415, 998
  swap_pair 417, 534
  swap_pair 419, 790
  swap_pair 421, 662
  swap_pair 423, 918
  swap_pair 425, 598
  swap_pair 427, 854
  swap_pair 429, 726
  swap_pair 430, 470
  swap_pair 431, 982
  swap_pair 433, 566
  swap_pair 435, 822
  swap_pair 437, 694
  swap_pair 439, 950
  swap_pair 441, 630
  swap_pair 443, 886
  swap_pair 445, 758
  swap_pair 446, 502
  swap_pair 447, 1014
  swap_pair 449, 526
  swap_pair 451, 782
  swap_pair 453, 654
  swap_pair 455, 910
  swap_pair 457, 590
  swap_pair 459, 846
  swap_pair 461, 718
  swap_pair 463, 974
  swap_pair 465, 558
  swap_pair 467, 814
  swap_pair 469, 686
  swap_pair 471, 942
  swap_pair 473, 622
  swap_pair 475, 878
  swap_pair 477, 750
  swap_pair 478, 494
  swap_pair 479, 1006
  swap_pair 481, 542
  swap_pair 483, 798
  swap_pair 485, 670
  swap_pair 487, 926
  swap_pair 489, 606
  swap_pair 491, 862
  swap_pair 493, 734
  swap_pair 495, 990
  swap_pair 497, 574
  swap_pair 499, 830
  swap_pair 501, 702
  swap_pair 503, 958
  swap_pair 505, 638
  swap_pair 507, 894
  swap_pair 509, 766
  swap_pair 511, 1022
  swap_pair 515, 769
  swap_pair 517, 641
  swap_pair 519, 897
  swap_pair 521, 577
  swap_pair 523, 833
  swap_pair 525, 705
  swap_pair 527, 961
  swap_pair 529, 545
  swap_pair 531, 801
  swap_pair 533, 673
  swap_pair 535, 929
  swap_pair 537, 609
  swap_pair 539, 865
  swap_pair 541, 737
  swap_pair 543, 993
  swap_pair 547, 785
  swap_pair 549, 657
  swap_pair 551, 913
  swap_pair 553, 593
  swap_pair 555, 849
  swap_pair 557, 721
  swap_pair 559, 977
  swap_pair 563, 817
  swap_pair 565, 689
  swap_pair 567, 945
  swap_pair 569, 625
  swap_pair 571, 881
  swap_pair 573, 753
  swap_pair 575, 1009
  swap_pair 579, 777
  swap_pair 581, 649
  swap_pair 583, 905
  swap_pair 587, 841
  swap_pair 589, 713
  swap_pair 591, 969
  swap_pair 595, 809
  swap_pair 597, 681
  swap_pair 599, 937
  swap_pair 601, 617
  swap_pair 603, 873
  swap_pair 605, 745
  swap_pair 607, 1001
  swap_pair 611, 793
  swap_pair 613, 665
  swap_pair 615, 921
  swap_pair 619, 857
  swap_pair 621, 729
  swap_pair 623, 985
  swap_pair 627, 825
  swap_pair 629, 697
  swap_pair 631, 953
  swap_pair 635, 889
  swap_pair 637, 761
  swap_pair 639, 1017
  swap_pair 643, 773
  swap_pair 647, 901
  swap_pair 651, 837
  swap_pair 653, 709
  swap_pair 655, 965
  swap_pair 659, 805
  swap_pair 661, 677
  swap_pair 663, 933
  swap_pair 667, 869
  swap_pair 669, 741
  swap_pair 671, 997
  swap_pair 675, 789
  swap_pair 679, 917
  swap_pair 683, 853
  swap_pair 685, 725
  swap_pair 687, 981
  swap_pair 691, 821
  swap_pair 695, 949
  swap_pair 699, 885
  swap_pair 701, 757
  swap_pair 703, 1013
  swap_pair 707, 781
  swap_pair 711, 909
  swap_pair 715, 845
  swap_pair 719, 973
  swap_pair 723, 813
  swap_pair 727, 941
  swap_pair 731, 877
  swap_pair 733, 749
  swap_pair 735, 1005
  swap_pair 739, 797
  swap_pair 743, 925
  swap_pair 747, 861
  swap_pair 751, 989
  swap_pair 755, 829
  swap_pair 759, 957
  swap_pair 763, 893
  swap_pair 767, 1021
  swap_pair 775, 899
  swap_pair 779, 835
  swap_pair 783, 963
  swap_pair 787, 803
  swap_pair 791, 931
  swap_pair 795, 867
  swap_pair 799, 995
  swap_pair 807, 915
  swap_pair 811, 851
  swap_pair 815, 979
  swap_pair 823, 947
  swap_pair 827, 883
  swap_pair 831, 1011
  swap_pair 839, 907
  swap_pair 847, 971
  swap_pair 855, 939
  swap_pair 859, 875
  swap_pair 863, 1003
  swap_pair 871, 923
  swap_pair 879, 987
  swap_pair 887, 955
  swap_pair 895, 1019
  swap_pair 911, 967
  swap_pair 919, 935
  swap_pair 927, 999
  swap_pair 943, 983
  swap_pair 959, 1015
  swap_pair 991, 1007


  // return
  ret

endfunc bitrev_vector_asm

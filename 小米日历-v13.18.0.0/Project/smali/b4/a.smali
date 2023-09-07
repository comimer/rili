.class public Lb4/a;
.super Ljava/lang/Object;
.source "AlmanacConsPros.java"


# static fields
.field private static b:Lb4/a;

.field private static final c:Ljava/lang/Long;

.field private static final d:Ljava/lang/Long;

.field private static final e:[Ljava/lang/String;


# instance fields
.field private a:Lmiuix/core/util/DirectIndexedFile$h;


# direct methods
.method static constructor <clinit>()V
    .locals 114

    .line 1
    new-instance v0, Ljava/util/GregorianCalendar;

    .line 2
    .line 3
    const/16 v1, 0x76d

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lb4/a;->c:Ljava/lang/Long;

    .line 19
    .line 20
    new-instance v0, Ljava/util/GregorianCalendar;

    .line 21
    .line 22
    const/16 v1, 0x834

    .line 23
    .line 24
    const/16 v2, 0xb

    .line 25
    .line 26
    const/16 v3, 0x1f

    .line 27
    .line 28
    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lb4/a;->d:Ljava/lang/Long;

    .line 40
    .line 41
    const-string v1, "\u7acb\u7891"

    .line 42
    .line 43
    const-string v2, "\u796d\u7940"

    .line 44
    .line 45
    const-string v3, "\u8d77\u57fa"

    .line 46
    .line 47
    const-string v4, "\u79fb\u5f99"

    .line 48
    .line 49
    const-string v5, "\u5f00\u4ed3"

    .line 50
    .line 51
    const-string v6, "\u7834\u5c4b"

    .line 52
    .line 53
    const-string v7, "\u4f5c\u5395"

    .line 54
    .line 55
    const-string v8, "\u5408\u5e10"

    .line 56
    .line 57
    const-string v9, "\u5165\u5b66"

    .line 58
    .line 59
    const-string v10, "\u4ea4\u6613"

    .line 60
    .line 61
    const-string v11, "\u9020\u4ed3"

    .line 62
    .line 63
    const-string v12, "\u6302\u533e"

    .line 64
    .line 65
    const-string v13, "\u7834\u571f"

    .line 66
    .line 67
    const-string v14, "\u5408\u810a"

    .line 68
    .line 69
    const-string v15, "\u542f\u6512"

    .line 70
    .line 71
    const-string v16, "\u658b\u91ae"

    .line 72
    .line 73
    const-string v17, "\u6559\u725b\u9a6c"

    .line 74
    .line 75
    const-string v18, "\u6355\u6349"

    .line 76
    .line 77
    const-string v19, "\u5b89\u846c"

    .line 78
    .line 79
    const-string v20, "\u4f59\u4e8b\u52ff\u53d6"

    .line 80
    .line 81
    const-string v21, "\u5b89\u9999"

    .line 82
    .line 83
    const-string v22, "\u5b89\u95e8"

    .line 84
    .line 85
    const-string v23, "\u4e0a\u6881"

    .line 86
    .line 87
    const-string v24, "\u5408\u5bff\u6728"

    .line 88
    .line 89
    const-string v25, "\u884c\u4e27"

    .line 90
    .line 91
    const-string v26, "\u8ba2\u76df"

    .line 92
    .line 93
    const-string v27, "\u7ecf\u7edc"

    .line 94
    .line 95
    const-string v28, "\u7ed3\u7f51"

    .line 96
    .line 97
    const-string v29, "\u9020\u6865"

    .line 98
    .line 99
    const-string v30, "\u5b89\u5e8a"

    .line 100
    .line 101
    const-string v31, "\u53d6\u6e14"

    .line 102
    .line 103
    const-string v32, "\u6c90\u6d74"

    .line 104
    .line 105
    const-string v33, "\u79fb\u67e9"

    .line 106
    .line 107
    const-string v34, "\u9020\u755c\u6906\u6816"

    .line 108
    .line 109
    const-string v35, "\u916c\u795e"

    .line 110
    .line 111
    const-string v36, "\u8fdb\u4eba\u53e3"

    .line 112
    .line 113
    const-string v37, "\u5f00\u751f\u575f"

    .line 114
    .line 115
    const-string v38, "\u683d\u79cd"

    .line 116
    .line 117
    const-string v39, "\u4f5c\u6881"

    .line 118
    .line 119
    const-string v40, "\u666e\u6e21"

    .line 120
    .line 121
    const-string v41, "\u6398\u4e95"

    .line 122
    .line 123
    const-string v42, "\u8c22\u571f"

    .line 124
    .line 125
    const-string v43, "\u7acb\u5238"

    .line 126
    .line 127
    const-string v44, "\u5272\u871c"

    .line 128
    .line 129
    const-string v45, "\u4e58\u8239"

    .line 130
    .line 131
    const-string v46, "\u5165\u5b85"

    .line 132
    .line 133
    const-string v47, "\u5206\u5c45"

    .line 134
    .line 135
    const-string v48, "\u67b6\u9a6c"

    .line 136
    .line 137
    const-string v49, "\u5f52\u5b81"

    .line 138
    .line 139
    const-string v50, "\u5b89\u7893\u78d1"

    .line 140
    .line 141
    const-string v51, "\u96d5\u523b"

    .line 142
    .line 143
    const-string v52, "\u5851\u7ed8"

    .line 144
    .line 145
    const-string v53, "\u7948\u798f"

    .line 146
    .line 147
    const-string v54, "\u5f00\u5149"

    .line 148
    .line 149
    const-string v55, "\u65ad\u8681"

    .line 150
    .line 151
    const-string v56, "\u51fa\u706b"

    .line 152
    .line 153
    const-string v57, "\u5165\u6b93"

    .line 154
    .line 155
    const-string v58, "\u9020\u5c4b"

    .line 156
    .line 157
    const-string v59, "\u4fee\u9970\u57a3\u5899"

    .line 158
    .line 159
    const-string v60, "\u9020\u8f66\u5668"

    .line 160
    .line 161
    const-string v61, "\u51fa\u884c"

    .line 162
    .line 163
    const-string v62, "\u88c1\u8863"

    .line 164
    .line 165
    const-string v63, "\u6574\u624b\u8db3\u7532"

    .line 166
    .line 167
    const-string v64, "\u5e73\u6cbb\u9053\u6d82"

    .line 168
    .line 169
    const-string v65, "\u9020\u8239"

    .line 170
    .line 171
    const-string v66, "\u5f52\u5cab"

    .line 172
    .line 173
    const-string v67, "\u7eb3\u5a7f"

    .line 174
    .line 175
    const-string v68, "\u95ee\u540d"

    .line 176
    .line 177
    const-string v69, "\u96c7\u5eb8"

    .line 178
    .line 179
    const-string v70, "\u51a0\u7b04"

    .line 180
    .line 181
    const-string v71, "\u5f00\u67f1\u773c"

    .line 182
    .line 183
    const-string v72, "\u4fee\u95e8"

    .line 184
    .line 185
    const-string v73, "\u7406\u53d1"

    .line 186
    .line 187
    const-string v74, "\u4e60\u827a"

    .line 188
    .line 189
    const-string v75, "\u7eb3\u755c"

    .line 190
    .line 191
    const-string v76, "\u5f00\u6e20"

    .line 192
    .line 193
    const-string v77, "\u7f6e\u4ea7"

    .line 194
    .line 195
    const-string v78, "\u7eb3\u8d22"

    .line 196
    .line 197
    const-string v79, "\u5b89\u673a\u68b0"

    .line 198
    .line 199
    const-string v80, "\u51fa\u8d27\u8d22"

    .line 200
    .line 201
    const-string v81, "\u62c6\u5378"

    .line 202
    .line 203
    const-string v82, "\u7eb3\u91c7"

    .line 204
    .line 205
    const-string v83, "\u4fee\u575f"

    .line 206
    .line 207
    const-string v84, "\u626b\u820d"

    .line 208
    .line 209
    const-string v85, "\u6c42\u55e3"

    .line 210
    .line 211
    const-string v86, "\u653e\u6c34"

    .line 212
    .line 213
    const-string v87, "\u8865\u57a3"

    .line 214
    .line 215
    const-string v88, "\u63a2\u75c5"

    .line 216
    .line 217
    const-string v89, "\u6c42\u533b"

    .line 218
    .line 219
    const-string v90, "\u9488\u7078"

    .line 220
    .line 221
    const-string v91, "\u7ad6\u67f1"

    .line 222
    .line 223
    const-string v92, "\u6210\u670d"

    .line 224
    .line 225
    const-string v93, "\u5f00\u6c60"

    .line 226
    .line 227
    const-string v94, "\u4f10\u6728"

    .line 228
    .line 229
    const-string v95, "\u4f5c\u7076"

    .line 230
    .line 231
    const-string v96, "\u8bcd\u8bbc"

    .line 232
    .line 233
    const-string v97, "\u8d74\u4efb"

    .line 234
    .line 235
    const-string v98, "\u574f\u57a3"

    .line 236
    .line 237
    const-string v99, "\u585e\u7a74"

    .line 238
    .line 239
    const-string v100, "\u7b51\u5824"

    .line 240
    .line 241
    const-string v101, "\u4f1a\u4eb2\u53cb"

    .line 242
    .line 243
    const-string v102, "\u7267\u517b"

    .line 244
    .line 245
    const-string v103, "\u8bf8\u4e8b\u4e0d\u5b9c"

    .line 246
    .line 247
    const-string v104, "\u9020\u5e99"

    .line 248
    .line 249
    const-string v105, "\u89e3\u9664"

    .line 250
    .line 251
    const-string v106, "\u9664\u670d"

    .line 252
    .line 253
    const-string v107, "\u754b\u730e"

    .line 254
    .line 255
    const-string v108, "\u6cbb\u75c5"

    .line 256
    .line 257
    const-string v109, "\u5b9a\u78c9"

    .line 258
    .line 259
    const-string v110, "\u5f00\u5e02"

    .line 260
    .line 261
    const-string v111, "\u52a8\u571f"

    .line 262
    .line 263
    const-string v112, "\u5ac1\u5a36"

    .line 264
    .line 265
    const-string v113, "\u4fee\u9020"

    .line 266
    .line 267
    filled-new-array/range {v1 .. v113}, [Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    sput-object v0, Lb4/a;->e:[Ljava/lang/String;

    .line 272
    .line 273
    return-void
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lb4/a;->c()V

    .line 5
    .line 6
    .line 7
    return-void
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static declared-synchronized b()Lb4/a;
    .locals 2

    .line 1
    const-class v0, Lb4/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lb4/a;->b:Lb4/a;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lb4/a;

    .line 9
    .line 10
    invoke-direct {v1}, Lb4/a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lb4/a;->b:Lb4/a;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lb4/a;->b:Lb4/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
    .line 22
.end method

.method private c()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "huangli.idf"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lmiuix/core/util/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v2, Ljava/io/File;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    :try_start_0
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile;->b(Ljava/lang/String;)Lmiuix/core/util/DirectIndexedFile$h;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lb4/a;->a:Lmiuix/core/util/DirectIndexedFile$h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    iget-object v0, p0, Lb4/a;->a:Lmiuix/core/util/DirectIndexedFile$h;

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    :try_start_1
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v2, 0x1

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile;->a(Ljava/io/InputStream;)Lmiuix/core/util/DirectIndexedFile$h;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lb4/a;->a:Lmiuix/core/util/DirectIndexedFile$h;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catch_1
    const-string v0, "AlmanacConsPros"

    .line 72
    .line 73
    const-string v1, "Can\'t read huangli.idf, NO huangli supported!"

    .line 74
    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_1
    return-void
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method


# virtual methods
.method public a(J)[Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lb4/a;->a:Lmiuix/core/util/DirectIndexedFile$h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    sget-object v0, Lb4/a;->c:Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    cmp-long v2, p1, v2

    .line 14
    .line 15
    if-ltz v2, :cond_4

    .line 16
    .line 17
    sget-object v2, Lb4/a;->d:Ljava/lang/Long;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    cmp-long v2, p1, v2

    .line 24
    .line 25
    if-gtz v2, :cond_4

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    new-array v2, v1, [Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    sub-long/2addr p1, v3

    .line 35
    const-wide/32 v3, 0x5265c00

    .line 36
    .line 37
    .line 38
    div-long/2addr p1, v3

    .line 39
    long-to-int p1, p1

    .line 40
    iget-object p2, p0, Lb4/a;->a:Lmiuix/core/util/DirectIndexedFile$h;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p2, v0, p1, v0}, Lmiuix/core/util/DirectIndexedFile$h;->c(III)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/lang/String;

    .line 48
    .line 49
    const/4 p2, -0x1

    .line 50
    const-string v3, ","

    .line 51
    .line 52
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance p2, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    array-length v3, p1

    .line 62
    if-ne v3, v1, :cond_3

    .line 63
    .line 64
    move v1, v0

    .line 65
    :goto_0
    array-length v3, p1

    .line 66
    if-ge v1, v3, :cond_3

    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 69
    .line 70
    .line 71
    aget-object v3, p1, v1

    .line 72
    .line 73
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    aget-object v3, p1, v1

    .line 80
    .line 81
    const-string v4, "\u3001"

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    array-length v4, v3

    .line 88
    move v5, v0

    .line 89
    :goto_1
    if-ge v5, v4, :cond_2

    .line 90
    .line 91
    aget-object v6, v3, v5

    .line 92
    .line 93
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    sget-object v7, Lb4/a;->e:[Ljava/lang/String;

    .line 98
    .line 99
    array-length v8, v7

    .line 100
    if-ge v6, v8, :cond_1

    .line 101
    .line 102
    aget-object v6, v7, v6

    .line 103
    .line 104
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    const-string v3, " "

    .line 111
    .line 112
    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    aput-object v3, v2, v1

    .line 117
    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    return-object v2

    .line 122
    :cond_4
    return-object v1
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb4/a;->a:Lmiuix/core/util/DirectIndexedFile$h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmiuix/core/util/DirectIndexedFile$h;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 9
    .line 10
    .line 11
    return-void
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

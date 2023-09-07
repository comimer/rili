.class public Lorg/xbill/DNS/CDSRecord;
.super Lorg/xbill/DNS/DSRecord;
.source "CDSRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x2bccfbc3d2feaf86L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/xbill/DNS/DSRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIII[B)V
    .locals 10

    const/16 v2, 0x3b

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 2
    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/DSRecord;-><init>(Lorg/xbill/DNS/Name;IIJIII[B)V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJILorg/xbill/DNS/DNSKEYRecord;)V
    .locals 10

    .line 3
    invoke-virtual/range {p6 .. p6}, Lorg/xbill/DNS/KEYBase;->getFootprint()I

    move-result v6

    .line 4
    invoke-virtual/range {p6 .. p6}, Lorg/xbill/DNS/KEYBase;->getAlgorithm()I

    move-result v7

    move v8, p5

    move-object/from16 v0, p6

    .line 5
    invoke-static {v0, p5}, Lorg/xbill/DNS/DNSSEC;->generateDSDigest(Lorg/xbill/DNS/DNSKEYRecord;I)[B

    move-result-object v9

    const/16 v2, 0x3b

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    .line 6
    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/DSRecord;-><init>(Lorg/xbill/DNS/Name;IIJIII[B)V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .line 1
    new-instance v0, Lorg/xbill/DNS/CDSRecord;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/xbill/DNS/CDSRecord;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
    .line 7
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

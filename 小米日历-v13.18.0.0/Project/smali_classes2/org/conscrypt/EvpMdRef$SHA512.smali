.class final Lorg/conscrypt/EvpMdRef$SHA512;
.super Ljava/lang/Object;
.source "EvpMdRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/EvpMdRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SHA512"
.end annotation


# static fields
.field static final EVP_MD:J

.field static final JCA_NAME:Ljava/lang/String; = "SHA-512"

.field static final OID:Ljava/lang/String; = "2.16.840.1.101.3.4.2.3"

.field static final SIZE_BYTES:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "sha512"

    .line 2
    .line 3
    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sput-wide v0, Lorg/conscrypt/EvpMdRef$SHA512;->EVP_MD:J

    .line 8
    .line 9
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->EVP_MD_size(J)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sput v0, Lorg/conscrypt/EvpMdRef$SHA512;->SIZE_BYTES:I

    .line 14
    .line 15
    return-void
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

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

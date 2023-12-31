.class public Lorg/conscrypt/ct/DigitallySigned;
.super Ljava/lang/Object;
.source "DigitallySigned.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;,
        Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;
    }
.end annotation


# instance fields
.field private final hashAlgorithm:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field private final signature:[B

.field private final signatureAlgorithm:Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    .line 5
    invoke-static {p1}, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;->valueOf(I)Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    move-result-object p1

    .line 6
    invoke-static {p2}, Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->valueOf(I)Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lorg/conscrypt/ct/DigitallySigned;-><init>(Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/conscrypt/ct/DigitallySigned;->hashAlgorithm:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 3
    iput-object p2, p0, Lorg/conscrypt/ct/DigitallySigned;->signatureAlgorithm:Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    .line 4
    iput-object p3, p0, Lorg/conscrypt/ct/DigitallySigned;->signature:[B

    return-void
.end method

.method public static decode(Ljava/io/InputStream;)Lorg/conscrypt/ct/DigitallySigned;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/conscrypt/ct/DigitallySigned;

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v1}, Lorg/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v2

    .line 3
    invoke-static {p0, v1}, Lorg/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v1

    const/4 v3, 0x2

    .line 4
    invoke-static {p0, v3}, Lorg/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    invoke-direct {v0, v2, v1, p0}, Lorg/conscrypt/ct/DigitallySigned;-><init>(II[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {v0, p0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static decode([B)Lorg/conscrypt/ct/DigitallySigned;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/conscrypt/ct/DigitallySigned;->decode(Ljava/io/InputStream;)Lorg/conscrypt/ct/DigitallySigned;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/conscrypt/ct/DigitallySigned;->hashAlgorithm:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    iget-object v1, p0, Lorg/conscrypt/ct/DigitallySigned;->signatureAlgorithm:Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    const-string v1, "%swith%s"

    .line 15
    .line 16
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public getHashAlgorithm()Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ct/DigitallySigned;->hashAlgorithm:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
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

.method public getSignature()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ct/DigitallySigned;->signature:[B

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
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

.method public getSignatureAlgorithm()Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ct/DigitallySigned;->signatureAlgorithm:Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
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

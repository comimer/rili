.class public Lcom/xiaomi/onetrack/d/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "DigestUtil"

.field private static final b:[C

.field private static final c:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [C

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/xiaomi/onetrack/d/d;->b:[C

    .line 9
    .line 10
    new-array v0, v0, [C

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/xiaomi/onetrack/d/d;->c:[C

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    .line 20
    .line 21
    .line 22
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BZ)Ljava/lang/String;
    .locals 1

    .line 5
    new-instance v0, Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaomi/onetrack/d/d;->b:[C

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaomi/onetrack/d/d;->c:[C

    :goto_0
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/d/d;->a([B[C)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static a()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "MD5"

    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/d/d;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static a([B)[B
    .locals 1

    .line 4
    invoke-static {}, Lcom/xiaomi/onetrack/d/d;->a()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([B[C)[C
    .locals 7

    .line 6
    array-length v0, p0

    shl-int/lit8 v1, v0, 0x1

    .line 7
    new-array v1, v1, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 8
    aget-byte v5, p0, v2

    and-int/lit16 v6, v5, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, p1, v6

    aput-char v6, v1, v3

    add-int/lit8 v3, v4, 0x1

    and-int/lit8 v5, v5, 0xf

    .line 9
    aget-char v5, p1, v5

    aput-char v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static b([B)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->a([B)[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/d;->a([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "SHA-256"

    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/d/d;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->a([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->b(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/d;->a([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "SHA1"

    .line 2
    invoke-static {v0}, Lcom/xiaomi/onetrack/d/d;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static c([B)[B
    .locals 1

    .line 3
    invoke-static {}, Lcom/xiaomi/onetrack/d/d;->b()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->g(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/d;->a([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d([B)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->c([B)[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/d;->a([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->f(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/d;->a([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e([B)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "MD5"

    .line 2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 4
    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string v0, "%1$032X"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMD5 exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DigestUtil"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, ""

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)[B
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->c([B)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
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

.method public static g(Ljava/lang/String;)[B
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/d/d;->c()Ljava/security/MessageDigest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "UTF-8"

    .line 6
    .line 7
    invoke-static {p0, v1}, Lcom/xiaomi/onetrack/d/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->e([B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
    .line 19
    .line 20
    .line 21
    .line 22
.end method

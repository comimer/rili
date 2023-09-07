.class public Lj7/c;
.super Ljava/lang/Object;
.source "OperatorAccountCertificationFetcher.java"

# interfaces
.implements Lj7/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj7/c;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lj7/c;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method


# virtual methods
.method public a(Landroid/content/Context;I)Lcom/xiaomi/phonenum/data/AccountCertification;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/phonenum/procedure/cert/AccountCertificationFetchException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lg7/d;->a(Landroid/content/Context;)Lg7/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lj7/c;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lj7/c;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, p2, v0, v1}, Lg7/d;->f(ILjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/phonenum/data/AccountCertification;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Lcom/xiaomi/phonenum/obtain/PhoneException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Lcom/xiaomi/phonenum/procedure/cert/AccountCertificationFetchException;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Lcom/xiaomi/phonenum/procedure/cert/AccountCertificationFetchException;-><init>(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw p2

    .line 21
    :catch_1
    move-exception p1

    .line 22
    new-instance p2, Lcom/xiaomi/phonenum/procedure/cert/AccountCertificationFetchException;

    .line 23
    .line 24
    invoke-direct {p2, p1}, Lcom/xiaomi/phonenum/procedure/cert/AccountCertificationFetchException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw p2
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

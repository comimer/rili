.class public Li7/a;
.super Ljava/lang/Object;
.source "AccountPhoneNumberManagerFactory.java"


# direct methods
.method public static a(Landroid/content/Context;)Li7/c;
    .locals 0

    .line 1
    invoke-static {p0}, Li7/d;->e(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Li7/d;

    .line 8
    .line 9
    invoke-direct {p0}, Li7/d;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p0, Li7/e;

    .line 14
    .line 15
    invoke-direct {p0}, Li7/e;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object p0
    .line 19
    .line 20
    .line 21
    .line 22
.end method

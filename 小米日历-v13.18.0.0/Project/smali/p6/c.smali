.class public Lp6/c;
.super Ljava/lang/Object;
.source "WeixinShareHandler.java"


# static fields
.field public static a:Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# direct methods
.method public static a(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/k;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {p0, v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    new-instance v0, Lp6/c$a;

    .line 14
    .line 15
    invoke-direct {v0}, Lp6/c$a;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, p1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
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

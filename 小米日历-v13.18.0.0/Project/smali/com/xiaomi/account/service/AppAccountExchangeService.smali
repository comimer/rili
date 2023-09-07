.class public Lcom/xiaomi/account/service/AppAccountExchangeService;
.super Landroid/app/Service;
.source "AppAccountExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/account/service/AppAccountExchangeService$a;
    }
.end annotation


# instance fields
.field private a:Lm5/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
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
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/xiaomi/account/service/AppAccountExchangeService;->a:Lm5/a$a;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/xiaomi/account/service/AppAccountExchangeService$a;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lcom/xiaomi/account/service/AppAccountExchangeService$a;-><init>(Lcom/xiaomi/account/service/AppAccountExchangeService;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/xiaomi/account/service/AppAccountExchangeService;->a:Lm5/a$a;

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/account/service/AppAccountExchangeService;->a:Lm5/a$a;

    .line 13
    .line 14
    return-object p1
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.class Lcom/xiaomi/passport/ui/internal/util/LoginUIController$a;
.super Lcom/xiaomi/passport/uicontroller/PhoneLoginController$q;
.source "LoginUIController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/util/LoginUIController;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/ui/internal/util/LoginUIController;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/util/LoginUIController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController$a;->a:Lcom/xiaomi/passport/ui/internal/util/LoginUIController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$q;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
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
.method public a(Lcom/xiaomi/accountsdk/account/data/d;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$q;->a(Lcom/xiaomi/accountsdk/account/data/d;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController$a;->a:Lcom/xiaomi/passport/ui/internal/util/LoginUIController;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->a(Lcom/xiaomi/passport/ui/internal/util/LoginUIController;)Landroid/app/Activity;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController$a;->a:Lcom/xiaomi/passport/ui/internal/util/LoginUIController;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->a(Lcom/xiaomi/passport/ui/internal/util/LoginUIController;)Landroid/app/Activity;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1, v2, v0, p1}, Lcom/xiaomi/passport/ui/internal/util/c;->b(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/d;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
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
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

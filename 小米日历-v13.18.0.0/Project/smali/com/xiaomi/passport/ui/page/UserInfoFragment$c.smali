.class Lcom/xiaomi/passport/ui/page/UserInfoFragment$c;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/page/UserInfoFragment;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/ui/view/EditTextGroupView;

.field final synthetic b:Lcom/xiaomi/passport/ui/page/UserInfoFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/page/UserInfoFragment;Lcom/xiaomi/passport/ui/view/EditTextGroupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$c;->b:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$c;->a:Lcom/xiaomi/passport/ui/view/EditTextGroupView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$c;->a:Lcom/xiaomi/passport/ui/view/EditTextGroupView;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/view/EditTextGroupView;->getInputText()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$c;->b:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/xiaomi/passport/ui/page/UserInfoFragment;->r(Lcom/xiaomi/passport/ui/page/UserInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$c;->b:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/ui/page/a;->l(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$c;->b:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 26
    .line 27
    sget-object v1, Lcom/xiaomi/passport/ui/settings/UploadProfileType;->TYPE_USER_NAME:Lcom/xiaomi/passport/ui/settings/UploadProfileType;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v0, v1, p1, v2, v2}, Lcom/xiaomi/passport/ui/page/UserInfoFragment;->s(Lcom/xiaomi/passport/ui/page/UserInfoFragment;Lcom/xiaomi/passport/ui/settings/UploadProfileType;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/Gender;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
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

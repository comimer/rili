.class Lcom/xiaomi/passport/ui/page/UserInfoFragment$a;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/page/UserInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/page/UserInfoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$a;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$a;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 8
    .line 9
    const-string v0, "gallery"

    .line 10
    .line 11
    invoke-static {p2, v0}, Lcom/xiaomi/passport/ui/page/UserInfoFragment;->m(Lcom/xiaomi/passport/ui/page/UserInfoFragment;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object p2, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$a;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 16
    .line 17
    const-string v0, "camera"

    .line 18
    .line 19
    invoke-static {p2, v0}, Lcom/xiaomi/passport/ui/page/UserInfoFragment;->m(Lcom/xiaomi/passport/ui/page/UserInfoFragment;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 23
    .line 24
    .line 25
    return-void
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

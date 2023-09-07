.class Lcom/xiaomi/passport/ui/page/b$a;
.super Ljava/lang/Object;
.source "InputPhoneNumberFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/page/b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/ui/page/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/page/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/b$a;->a:Lcom/xiaomi/passport/ui/page/b;

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
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/b$a;->a:Lcom/xiaomi/passport/ui/page/b;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/xiaomi/passport/ui/page/b;->y(Lcom/xiaomi/passport/ui/page/b;)Lcom/xiaomi/passport/ui/view/AgreementView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/ui/view/AgreementView;->setUserAgreementSelected(Z)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/b$a;->a:Lcom/xiaomi/passport/ui/page/b;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/xiaomi/passport/ui/page/b;->z(Lcom/xiaomi/passport/ui/page/b;)V

    .line 14
    .line 15
    .line 16
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.class Lcom/xiaomi/passport/ui/page/e$h;
.super Ljava/lang/Object;
.source "PhoneAccountLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/page/e;->H(Landroid/view/View;Lcom/xiaomi/passport/ui/data/PhoneAccount;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/ui/data/PhoneAccount;

.field final synthetic b:Lcom/xiaomi/passport/ui/page/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/page/e;Lcom/xiaomi/passport/ui/data/PhoneAccount;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/e$h;->b:Lcom/xiaomi/passport/ui/page/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xiaomi/passport/ui/page/e$h;->a:Lcom/xiaomi/passport/ui/data/PhoneAccount;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/e$h;->b:Lcom/xiaomi/passport/ui/page/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xiaomi/passport/ui/page/e;->D(Lcom/xiaomi/passport/ui/page/e;)Lcom/xiaomi/passport/ui/view/AgreementView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/view/AgreementView;->setUserAgreementSelected(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/e$h;->b:Lcom/xiaomi/passport/ui/page/e;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/e$h;->a:Lcom/xiaomi/passport/ui/data/PhoneAccount;

    .line 14
    .line 15
    invoke-static {v0, p1, v1}, Lcom/xiaomi/passport/ui/page/e;->B(Lcom/xiaomi/passport/ui/page/e;Landroid/view/View;Lcom/xiaomi/passport/ui/data/PhoneAccount;)V

    .line 16
    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.class Lcom/xiaomi/passport/ui/page/e$f;
.super Ljava/lang/Object;
.source "PhoneAccountLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/page/e;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/ui/page/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/page/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/e$f;->a:Lcom/xiaomi/passport/ui/page/e;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/e$f;->a:Lcom/xiaomi/passport/ui/page/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xiaomi/passport/ui/page/e;->z(Lcom/xiaomi/passport/ui/page/e;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/xiaomi/passport/ui/data/PhoneAccount;

    .line 13
    .line 14
    invoke-static {v0, p1, v1}, Lcom/xiaomi/passport/ui/page/e;->B(Lcom/xiaomi/passport/ui/page/e;Landroid/view/View;Lcom/xiaomi/passport/ui/data/PhoneAccount;)V

    .line 15
    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

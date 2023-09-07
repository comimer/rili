.class Lcom/xiaomi/passport/ui/page/f$c;
.super Ljava/lang/Object;
.source "SNSLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/page/f;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ls6/p;

.field final synthetic b:Lcom/xiaomi/passport/ui/page/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/page/f;Ls6/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/f$c;->b:Lcom/xiaomi/passport/ui/page/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xiaomi/passport/ui/page/f$c;->a:Ls6/p;

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
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/f$c;->a:Ls6/p;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/f$c;->b:Lcom/xiaomi/passport/ui/page/f;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/f$c;->b:Lcom/xiaomi/passport/ui/page/f;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->f:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/page/a;->j()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v0, v2, v1}, Ls6/p;->p(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

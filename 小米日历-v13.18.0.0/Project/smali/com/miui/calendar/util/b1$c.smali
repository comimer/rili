.class public final Lcom/miui/calendar/util/b1$c;
.super Ljava/lang/Object;
.source "VerticalMotionUtil.kt"

# interfaces
.implements Lcom/miui/calendar/view/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/util/b1;->n(Landroid/content/Context;Lcom/miui/calendar/view/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/miui/calendar/util/b1$c",
        "Lcom/miui/calendar/view/b$a;",
        "",
        "state",
        "Lkotlin/u;",
        "b",
        "Landroid/view/View;",
        "v",
        "",
        "y",
        "a",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/calendar/util/b1;


# direct methods
.method constructor <init>(Lcom/miui/calendar/util/b1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/util/b1$c;->a:Lcom/miui/calendar/util/b1;

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
.method public a(Landroid/view/View;F)V
    .locals 2

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/miui/calendar/util/b1$c;->a:Lcom/miui/calendar/util/b1;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, p2, v1}, Lcom/miui/calendar/util/b1;->c(FZ)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/miui/calendar/util/b1$c;->a:Lcom/miui/calendar/util/b1;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/miui/calendar/util/b1;->f()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    int-to-float v0, v0

    .line 19
    cmpg-float v0, p2, v0

    .line 20
    .line 21
    if-gtz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-static {v0}, Lcom/miui/calendar/util/x0;->M0(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/util/b1$c;->a:Lcom/miui/calendar/util/b1;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/miui/calendar/util/b1;->e()Lcom/miui/calendar/view/b$a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-interface {v0, p1, p2}, Lcom/miui/calendar/view/b$a;->a(Landroid/view/View;F)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
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

.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/util/b1$c;->a:Lcom/miui/calendar/util/b1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/calendar/util/b1;->e()Lcom/miui/calendar/view/b$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/miui/calendar/view/b$a;->b(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
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

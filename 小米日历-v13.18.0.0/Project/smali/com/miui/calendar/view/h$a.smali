.class Lcom/miui/calendar/view/h$a;
.super Lcom/miui/calendar/view/h$c;
.source "DropDownPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/view/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/miui/calendar/view/h;


# direct methods
.method constructor <init>(Lcom/miui/calendar/view/h;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/view/h$a;->b:Lcom/miui/calendar/view/h;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/miui/calendar/view/h$c;-><init>(Lcom/miui/calendar/view/h;Lcom/miui/calendar/view/h$a;)V

    .line 5
    .line 6
    .line 7
    return-void
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
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/miui/calendar/view/h$c;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/miui/calendar/view/h$a;->b:Lcom/miui/calendar/view/h;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/miui/calendar/view/h;->a(Lcom/miui/calendar/view/h;)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/miui/calendar/view/h$a;->b:Lcom/miui/calendar/view/h;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/miui/calendar/view/h;->a(Lcom/miui/calendar/view/h;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/miui/calendar/view/h$a;->b:Lcom/miui/calendar/view/h;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/miui/calendar/view/h;->a(Lcom/miui/calendar/view/h;)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    neg-int v0, v0

    .line 31
    int-to-float v0, v0

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 33
    .line 34
    .line 35
    return-void
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

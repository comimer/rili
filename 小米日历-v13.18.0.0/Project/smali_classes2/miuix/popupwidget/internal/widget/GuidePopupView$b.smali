.class Lmiuix/popupwidget/internal/widget/GuidePopupView$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GuidePopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/internal/widget/GuidePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lmiuix/popupwidget/internal/widget/GuidePopupView;


# direct methods
.method constructor <init>(Lmiuix/popupwidget/internal/widget/GuidePopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$b;->b:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

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
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$b;->a:Z

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
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$b;->a:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$b;->b:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->b(Lmiuix/popupwidget/internal/widget/GuidePopupView;Z)Z

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$b;->b:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {p1, v1}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->a(Lmiuix/popupwidget/internal/widget/GuidePopupView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$b;->b:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    .line 19
    .line 20
    invoke-static {p1}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->c(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Lva/b;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$b;->b:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->setArrowMode(I)V

    .line 30
    .line 31
    .line 32
    return-void
    .line 33
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$b;->a:Z

    .line 3
    .line 4
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$b;->b:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p1, v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->b(Lmiuix/popupwidget/internal/widget/GuidePopupView;Z)Z

    .line 8
    .line 9
    .line 10
    return-void
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
.end method

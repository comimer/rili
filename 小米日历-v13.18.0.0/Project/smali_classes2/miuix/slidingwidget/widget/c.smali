.class public final synthetic Lmiuix/slidingwidget/widget/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic a:Lmiuix/slidingwidget/widget/SlidingSwitch;


# direct methods
.method public synthetic constructor <init>(Lmiuix/slidingwidget/widget/SlidingSwitch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/slidingwidget/widget/c;->a:Lmiuix/slidingwidget/widget/SlidingSwitch;

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lmiuix/slidingwidget/widget/c;->a:Lmiuix/slidingwidget/widget/SlidingSwitch;

    invoke-static {v0, p1, p2}, Lmiuix/slidingwidget/widget/SlidingSwitch;->a(Lmiuix/slidingwidget/widget/SlidingSwitch;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

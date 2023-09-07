.class public final synthetic Lcom/android/calendar/homepage/q0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lmiuix/animation/d;


# direct methods
.method public synthetic constructor <init>(Lmiuix/animation/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/q0;->a:Lmiuix/animation/d;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/homepage/q0;->a:Lmiuix/animation/d;

    invoke-static {v0, p1, p2}, Lcom/android/calendar/homepage/t0;->b(Lmiuix/animation/d;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

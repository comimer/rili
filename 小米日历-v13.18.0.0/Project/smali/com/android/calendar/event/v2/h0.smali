.class public final synthetic Lcom/android/calendar/event/v2/h0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/v2/h0;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/v2/h0;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/calendar/event/v2/j0;->O(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

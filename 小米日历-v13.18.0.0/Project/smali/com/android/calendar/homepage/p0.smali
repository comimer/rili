.class public final synthetic Lcom/android/calendar/homepage/p0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/t0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/t0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/p0;->a:Lcom/android/calendar/homepage/t0;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/homepage/p0;->a:Lcom/android/calendar/homepage/t0;

    invoke-static {v0, p1}, Lcom/android/calendar/homepage/t0;->e(Lcom/android/calendar/homepage/t0;Landroid/animation/ValueAnimator;)V

    return-void
.end method

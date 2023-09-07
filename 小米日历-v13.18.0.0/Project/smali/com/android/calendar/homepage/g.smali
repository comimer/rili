.class public final synthetic Lcom/android/calendar/homepage/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/AllDayEventsView;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/AllDayEventsView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/g;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    iput-boolean p2, p0, Lcom/android/calendar/homepage/g;->b:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/homepage/g;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    iget-boolean v1, p0, Lcom/android/calendar/homepage/g;->b:Z

    invoke-static {v0, v1, p1}, Lcom/android/calendar/homepage/AllDayEventsView;->a(Lcom/android/calendar/homepage/AllDayEventsView;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

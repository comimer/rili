.class public final synthetic Lcom/miui/calendar/view/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/view/MonthMotionContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/view/MonthMotionContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/view/o;->a:Lcom/miui/calendar/view/MonthMotionContainer;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/view/o;->a:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-static {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->c(Lcom/miui/calendar/view/MonthMotionContainer;Landroid/animation/ValueAnimator;)V

    return-void
.end method

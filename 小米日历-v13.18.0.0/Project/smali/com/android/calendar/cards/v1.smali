.class public final synthetic Lcom/android/calendar/cards/v1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/cards/x1$c;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/cards/x1$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/v1;->a:Lcom/android/calendar/cards/x1$c;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/cards/v1;->a:Lcom/android/calendar/cards/x1$c;

    invoke-static {v0, p1, p2}, Lcom/android/calendar/cards/x1;->f(Lcom/android/calendar/cards/x1$c;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

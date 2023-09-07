.class public final synthetic Lr1/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/birthday/ContactBirthdayActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/birthday/ContactBirthdayActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1/b;->a:Lcom/android/calendar/birthday/ContactBirthdayActivity;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lr1/b;->a:Lcom/android/calendar/birthday/ContactBirthdayActivity;

    invoke-static {v0, p1, p2}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->Y(Lcom/android/calendar/birthday/ContactBirthdayActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

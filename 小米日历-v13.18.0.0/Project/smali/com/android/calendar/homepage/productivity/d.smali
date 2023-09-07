.class public final synthetic Lcom/android/calendar/homepage/productivity/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;

.field public final synthetic b:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

.field public final synthetic c:Lcom/android/calendar/common/event/schema/Event;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Lcom/android/calendar/common/event/schema/Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/productivity/d;->a:Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;

    iput-object p2, p0, Lcom/android/calendar/homepage/productivity/d;->b:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    iput-object p3, p0, Lcom/android/calendar/homepage/productivity/d;->c:Lcom/android/calendar/common/event/schema/Event;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/d;->a:Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;

    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/d;->b:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    iget-object v2, p0, Lcom/android/calendar/homepage/productivity/d;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->b(Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Lcom/android/calendar/common/event/schema/Event;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

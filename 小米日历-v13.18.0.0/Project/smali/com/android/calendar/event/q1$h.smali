.class Lcom/android/calendar/event/q1$h;
.super Ljava/lang/Object;
.source "NewEditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/q1;->F0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/event/q1;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/q1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/q1$h;->a:Lcom/android/calendar/event/q1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "edit_event_click_calendar_selector"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/calendar/event/q1$h;->a:Lcom/android/calendar/event/q1;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/calendar/event/q1;->w:Lmiuix/appcompat/widget/Spinner;

    .line 9
    .line 10
    invoke-virtual {p1}, Lmiuix/appcompat/widget/Spinner;->performClick()Z

    .line 11
    .line 12
    .line 13
    return-void
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

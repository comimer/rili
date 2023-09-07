.class public final synthetic Lcom/android/calendar/homepage/u1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/WeekAllDayEventsView;

.field public final synthetic b:Lcom/android/calendar/homepage/l0$l;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/WeekAllDayEventsView;Lcom/android/calendar/homepage/l0$l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/u1;->a:Lcom/android/calendar/homepage/WeekAllDayEventsView;

    iput-object p2, p0, Lcom/android/calendar/homepage/u1;->b:Lcom/android/calendar/homepage/l0$l;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/homepage/u1;->a:Lcom/android/calendar/homepage/WeekAllDayEventsView;

    iget-object v1, p0, Lcom/android/calendar/homepage/u1;->b:Lcom/android/calendar/homepage/l0$l;

    invoke-static {v0, v1, p1}, Lcom/android/calendar/homepage/WeekAllDayEventsView$a;->a(Lcom/android/calendar/homepage/WeekAllDayEventsView;Lcom/android/calendar/homepage/l0$l;Landroid/view/View;)V

    return-void
.end method

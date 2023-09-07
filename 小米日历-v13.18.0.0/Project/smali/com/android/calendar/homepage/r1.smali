.class public final synthetic Lcom/android/calendar/homepage/r1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/WeekAllDayEventsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/WeekAllDayEventsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/r1;->a:Lcom/android/calendar/homepage/WeekAllDayEventsView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/homepage/r1;->a:Lcom/android/calendar/homepage/WeekAllDayEventsView;

    invoke-static {v0}, Lcom/android/calendar/homepage/WeekAllDayEventsView;->d(Lcom/android/calendar/homepage/WeekAllDayEventsView;)V

    return-void
.end method

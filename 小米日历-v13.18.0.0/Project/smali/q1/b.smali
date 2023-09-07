.class public final synthetic Lq1/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/application/CalendarApplication;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/application/CalendarApplication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1/b;->a:Lcom/android/calendar/application/CalendarApplication;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lq1/b;->a:Lcom/android/calendar/application/CalendarApplication;

    invoke-static {v0}, Lcom/android/calendar/application/CalendarApplication;->b(Lcom/android/calendar/application/CalendarApplication;)V

    return-void
.end method

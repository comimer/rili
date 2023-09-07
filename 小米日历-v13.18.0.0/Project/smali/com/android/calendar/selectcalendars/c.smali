.class public final synthetic Lcom/android/calendar/selectcalendars/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/v;


# instance fields
.field public final synthetic a:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/selectcalendars/c;->a:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/selectcalendars/c;->a:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    check-cast p1, Landroidx/work/WorkInfo;

    invoke-static {v0, p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->i(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Landroidx/work/WorkInfo;)V

    return-void
.end method

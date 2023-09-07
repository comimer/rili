.class public final synthetic Lcom/android/calendar/selectcalendars/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/selectcalendars/a;->a:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/selectcalendars/a;->a:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    check-cast p1, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    check-cast p2, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    invoke-static {v0, p1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->h(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)I

    move-result p1

    return p1
.end method

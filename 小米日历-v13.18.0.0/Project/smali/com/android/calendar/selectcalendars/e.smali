.class public final synthetic Lcom/android/calendar/selectcalendars/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

.field public final synthetic b:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/selectcalendars/e;->a:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    iput-object p2, p0, Lcom/android/calendar/selectcalendars/e;->b:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/selectcalendars/e;->a:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/e;->b:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;

    invoke-static {v0, v1, p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$c;->e(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;Landroid/view/View;)V

    return-void
.end method

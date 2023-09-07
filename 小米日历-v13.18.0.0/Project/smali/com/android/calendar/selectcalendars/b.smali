.class public final synthetic Lcom/android/calendar/selectcalendars/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

.field public final synthetic b:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

.field public final synthetic c:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/selectcalendars/b;->a:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    iput-object p2, p0, Lcom/android/calendar/selectcalendars/b;->b:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    iput-object p3, p0, Lcom/android/calendar/selectcalendars/b;->c:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/selectcalendars/b;->a:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/b;->b:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/b;->c:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;

    invoke-static {v0, v1, v2, p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;Landroid/view/View;)V

    return-void
.end method

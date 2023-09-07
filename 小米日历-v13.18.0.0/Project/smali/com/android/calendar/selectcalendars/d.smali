.class public final synthetic Lcom/android/calendar/selectcalendars/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

.field public final synthetic b:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/selectcalendars/d;->a:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    iput-object p2, p0, Lcom/android/calendar/selectcalendars/d;->b:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/selectcalendars/d;->a:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/d;->b:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    invoke-static {v0, v1, p1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->f(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Landroid/content/DialogInterface;I)V

    return-void
.end method

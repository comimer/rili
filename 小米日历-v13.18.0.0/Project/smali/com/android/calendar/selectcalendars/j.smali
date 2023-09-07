.class public final synthetic Lcom/android/calendar/selectcalendars/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/selectcalendars/AccountSettingsActivity;

.field public final synthetic b:I

.field public final synthetic c:Lcom/android/calendar/selectcalendars/AccountSettingsActivity$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;ILcom/android/calendar/selectcalendars/AccountSettingsActivity$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/selectcalendars/j;->a:Lcom/android/calendar/selectcalendars/AccountSettingsActivity;

    iput p2, p0, Lcom/android/calendar/selectcalendars/j;->b:I

    iput-object p3, p0, Lcom/android/calendar/selectcalendars/j;->c:Lcom/android/calendar/selectcalendars/AccountSettingsActivity$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/selectcalendars/j;->a:Lcom/android/calendar/selectcalendars/AccountSettingsActivity;

    iget v1, p0, Lcom/android/calendar/selectcalendars/j;->b:I

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/j;->c:Lcom/android/calendar/selectcalendars/AccountSettingsActivity$a;

    invoke-static {v0, v1, v2, p1}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$a;->f(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;ILcom/android/calendar/selectcalendars/AccountSettingsActivity$a;Landroid/view/View;)V

    return-void
.end method

.class public final synthetic Lcom/android/calendar/selectcalendars/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/selectcalendars/AccountSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/selectcalendars/i;->a:Lcom/android/calendar/selectcalendars/AccountSettingsActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/selectcalendars/i;->a:Lcom/android/calendar/selectcalendars/AccountSettingsActivity;

    invoke-static {v0, p1, p2}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity;->Y(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

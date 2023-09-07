.class public final synthetic Lcom/android/calendar/widget/base/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/widget/base/BaseWidgetProvider;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:[I

.field public final synthetic d:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/widget/base/BaseWidgetProvider;Landroid/content/Context;[ILandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/widget/base/c;->a:Lcom/android/calendar/widget/base/BaseWidgetProvider;

    iput-object p2, p0, Lcom/android/calendar/widget/base/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/calendar/widget/base/c;->c:[I

    iput-object p4, p0, Lcom/android/calendar/widget/base/c;->d:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/calendar/widget/base/c;->a:Lcom/android/calendar/widget/base/BaseWidgetProvider;

    iget-object v1, p0, Lcom/android/calendar/widget/base/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/widget/base/c;->c:[I

    iget-object v3, p0, Lcom/android/calendar/widget/base/c;->d:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/widget/base/BaseWidgetProvider;->a(Lcom/android/calendar/widget/base/BaseWidgetProvider;Landroid/content/Context;[ILandroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

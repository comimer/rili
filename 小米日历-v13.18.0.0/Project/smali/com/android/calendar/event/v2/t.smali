.class public final synthetic Lcom/android/calendar/event/v2/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

.field public final synthetic b:Lcom/android/calendar/common/event/schema/AgendaEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/v2/t;->a:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/event/v2/t;->b:Lcom/android/calendar/common/event/schema/AgendaEvent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/event/v2/t;->a:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/v2/t;->b:Lcom/android/calendar/common/event/schema/AgendaEvent;

    invoke-static {v0, v1, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->R(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V

    return-void
.end method

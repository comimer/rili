.class public final synthetic Lcom/android/calendar/event/v2/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/common/event/schema/AgendaEvent;

.field public final synthetic b:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/common/event/schema/AgendaEvent;Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/v2/r;->a:Lcom/android/calendar/common/event/schema/AgendaEvent;

    iput-object p2, p0, Lcom/android/calendar/event/v2/r;->b:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/event/v2/r;->a:Lcom/android/calendar/common/event/schema/AgendaEvent;

    iget-object v1, p0, Lcom/android/calendar/event/v2/r;->b:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    invoke-static {v0, v1, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->N(Lcom/android/calendar/common/event/schema/AgendaEvent;Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

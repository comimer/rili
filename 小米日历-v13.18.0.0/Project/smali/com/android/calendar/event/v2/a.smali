.class public final synthetic Lcom/android/calendar/event/v2/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

.field public final synthetic b:Lcom/android/calendar/common/event/schema/AgendaEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/v2/a;->a:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/event/v2/a;->b:Lcom/android/calendar/common/event/schema/AgendaEvent;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/event/v2/a;->a:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/v2/a;->b:Lcom/android/calendar/common/event/schema/AgendaEvent;

    invoke-static {v0, v1, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->P(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.class public final synthetic Lcom/android/calendar/event/v2/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

.field public final synthetic b:I

.field public final synthetic c:Lcom/android/calendar/common/event/schema/AgendaEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;ILcom/android/calendar/common/event/schema/AgendaEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/v2/o;->a:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    iput p2, p0, Lcom/android/calendar/event/v2/o;->b:I

    iput-object p3, p0, Lcom/android/calendar/event/v2/o;->c:Lcom/android/calendar/common/event/schema/AgendaEvent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/event/v2/o;->a:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    iget v1, p0, Lcom/android/calendar/event/v2/o;->b:I

    iget-object v2, p0, Lcom/android/calendar/event/v2/o;->c:Lcom/android/calendar/common/event/schema/AgendaEvent;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->W(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;ILcom/android/calendar/common/event/schema/AgendaEvent;Landroid/content/DialogInterface;I)V

    return-void
.end method

.class public final synthetic Lcom/android/calendar/homepage/p1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/WeekAgendaView;

.field public final synthetic b:Lcom/android/calendar/homepage/WeekAgendaView$b;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/WeekAgendaView;Lcom/android/calendar/homepage/WeekAgendaView$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/p1;->a:Lcom/android/calendar/homepage/WeekAgendaView;

    iput-object p2, p0, Lcom/android/calendar/homepage/p1;->b:Lcom/android/calendar/homepage/WeekAgendaView$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/homepage/p1;->a:Lcom/android/calendar/homepage/WeekAgendaView;

    iget-object v1, p0, Lcom/android/calendar/homepage/p1;->b:Lcom/android/calendar/homepage/WeekAgendaView$b;

    invoke-static {v0, v1, p1}, Lcom/android/calendar/homepage/WeekAgendaView$b;->e(Lcom/android/calendar/homepage/WeekAgendaView;Lcom/android/calendar/homepage/WeekAgendaView$b;Landroid/view/View;)V

    return-void
.end method

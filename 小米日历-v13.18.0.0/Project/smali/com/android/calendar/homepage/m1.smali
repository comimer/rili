.class public final synthetic Lcom/android/calendar/homepage/m1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/WeekAgendaView$b;

.field public final synthetic b:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/WeekAgendaView$b;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/m1;->a:Lcom/android/calendar/homepage/WeekAgendaView$b;

    iput-object p2, p0, Lcom/android/calendar/homepage/m1;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/homepage/m1;->a:Lcom/android/calendar/homepage/WeekAgendaView$b;

    iget-object v1, p0, Lcom/android/calendar/homepage/m1;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/calendar/homepage/WeekAgendaView$b;->a(Lcom/android/calendar/homepage/WeekAgendaView$b;Landroid/widget/TextView;)V

    return-void
.end method

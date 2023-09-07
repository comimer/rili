.class public final synthetic Lcom/android/calendar/homepage/o1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/LinearLayout;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lcom/android/calendar/homepage/WeekAgendaView$b;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/android/calendar/homepage/WeekAgendaView$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/o1;->a:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/calendar/homepage/o1;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/calendar/homepage/o1;->c:Lcom/android/calendar/homepage/WeekAgendaView$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/homepage/o1;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/calendar/homepage/o1;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/calendar/homepage/o1;->c:Lcom/android/calendar/homepage/WeekAgendaView$b;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/homepage/WeekAgendaView$b;->b(Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/android/calendar/homepage/WeekAgendaView$b;)V

    return-void
.end method

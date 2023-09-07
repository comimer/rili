.class public final synthetic Lcom/android/calendar/homepage/k1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/WeekAgendaView;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/WeekAgendaView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/k1;->a:Lcom/android/calendar/homepage/WeekAgendaView;

    iput p2, p0, Lcom/android/calendar/homepage/k1;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/homepage/k1;->a:Lcom/android/calendar/homepage/WeekAgendaView;

    iget v1, p0, Lcom/android/calendar/homepage/k1;->b:I

    invoke-static {v0, v1}, Lcom/android/calendar/homepage/WeekAgendaView;->a(Lcom/android/calendar/homepage/WeekAgendaView;I)V

    return-void
.end method

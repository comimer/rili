.class public final synthetic Lcom/miui/calendar/view/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/view/MonthPanelContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/view/MonthPanelContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/view/p;->a:Lcom/miui/calendar/view/MonthPanelContainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/view/p;->a:Lcom/miui/calendar/view/MonthPanelContainer;

    invoke-static {v0}, Lcom/miui/calendar/view/MonthPanelContainer;->b(Lcom/miui/calendar/view/MonthPanelContainer;)V

    return-void
.end method

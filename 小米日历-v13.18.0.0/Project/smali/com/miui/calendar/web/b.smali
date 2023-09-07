.class public final synthetic Lcom/miui/calendar/web/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/web/CalendarWebViewActivity$o;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/web/CalendarWebViewActivity$o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/web/b;->a:Lcom/miui/calendar/web/CalendarWebViewActivity$o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/web/b;->a:Lcom/miui/calendar/web/CalendarWebViewActivity$o;

    invoke-static {v0}, Lcom/miui/calendar/web/CalendarWebViewActivity$o;->a(Lcom/miui/calendar/web/CalendarWebViewActivity$o;)V

    return-void
.end method

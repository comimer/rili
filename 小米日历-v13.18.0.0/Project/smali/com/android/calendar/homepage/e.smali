.class public final synthetic Lcom/android/calendar/homepage/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/AgendaListLayout;

.field public final synthetic b:Ln1/e$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/AgendaListLayout;Ln1/e$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/e;->a:Lcom/android/calendar/homepage/AgendaListLayout;

    iput-object p2, p0, Lcom/android/calendar/homepage/e;->b:Ln1/e$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/homepage/e;->a:Lcom/android/calendar/homepage/AgendaListLayout;

    iget-object v1, p0, Lcom/android/calendar/homepage/e;->b:Ln1/e$a;

    invoke-static {v0, v1}, Lcom/android/calendar/homepage/AgendaListLayout$b;->a(Lcom/android/calendar/homepage/AgendaListLayout;Ln1/e$a;)V

    return-void
.end method

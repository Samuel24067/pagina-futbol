import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { InicioComponent } from './inicio/inicio.component';
import { VacompananosComponent } from './vacompananos/vacompananos.component';
import { MultimediaComponent } from './multimedia/multimedia.component';
import { NosotrosComponent } from './nosotros/nosotros.component';
import { HorariosComponent } from './horarios/horarios.component';
import { ContactenosComponent } from './contactenos/contactenos.component';
import { PiepaginaComponent } from './piepagina/piepagina.component';
import { FinalComponent } from './final/final.component';

@NgModule({
  declarations: [
    AppComponent,
    InicioComponent,
    VacompananosComponent,
    MultimediaComponent,
    NosotrosComponent,
    HorariosComponent,
    ContactenosComponent,
    PiepaginaComponent,
    FinalComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }

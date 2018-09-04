Calculo CALCULO = new Calculo();

class Calculo {

  float t1_f1 =0;
  boolean b_t1_f1 = false;
  boolean c_t1_f1 = false;
  float t2_f1 =0;
  boolean b_t2_f1 = false;
  boolean c_t2_f1 = false;
  float t1_f2 =0;
  boolean b_t1_f2 = false;
  boolean c_t1_f2 = false;
  float t2_f2 =0;
  boolean b_t2_f2 = false;
  boolean c_t2_f2 = false;

  float vazmas_1 = 0;
  boolean b_vazmas_1 = false;
  boolean c_vazmas_1 = false;
  float vazmas_2 = 0;
  boolean b_vazmas_2 = false;
  boolean c_vazmas_2 = false;
  float calesp_1 = 0;
  boolean b_calesp_1 = false;
  boolean c_calesp_1 = false;
  float calesp_2 = 0;
  boolean b_calesp_2 = false;
  boolean c_calesp_2 = false;

  float coef_global = 0;
  boolean b_coef_global = false;
  boolean c_coef_global = false;
  float coef_film_i = 0;
  boolean b_coef_film_i = false;
  boolean c_coef_film_i = false;
  float coef_film_e = 0;
  boolean b_coef_film_e = false;
  boolean c_coef_film_e = false;
  float area = 0;
  boolean b_area = false;
  boolean c_area = false;
  float taxa = 0;
  boolean b_taxa = false;
  boolean c_taxa = false;

  boolean corrente_invertida = false;

  float taxa_1 = 0;//pelo q=mct fluido 1
  boolean b_taxa_1 =false;
  float taxa_2 = 0;//pelo q=mct fluido 2
  boolean b_taxa_2 =false;
  float taxa_3 = 0;//pelo q=uatf 
  boolean b_taxa_3 =false;
  float taxa_4 = 0;//pelo q=uatf hi he
  boolean b_taxa_4 =false;
  float taxa_5 = 0;//pela taxa dada
  boolean b_taxa_5 =false;

  float taxa_final =0;
  boolean b_taxa_final =false;

  float fator = 1;
  boolean b_fator = false;

  boolean incalculavel = false;
  boolean errado = false;
  boolean proximo = false;

  boolean taxa_confirmada = true;


  float Fator2(float R, float P) {

    float coef0 = 0;
    float coef1 = 0;
    float coef2 = 0;
    float coef3 = 0;
    float coef4 = 0;
    float coef5 = 0;

    float F = 0;

    float P_tmp = 0;

    if (R == 4) {
      coef0 = 6.967;
      coef1 = -50.804;
      coef2 = 151.08;
      coef3 = -222.17;
      coef4 = 161.67;
      coef5 = -46.667;
    } else if (R == 3) {
      coef0 = 9.955;
      coef1 = -71.874;
      coef2 = 210.9;
      coef3 = -305.96;
      coef4 = 219.58;
      coef5 = -62.5;
    } else if (R == 2) {
      coef0 = 11.38;
      coef1 = -79.736;
      coef2 = 227.7;
      coef3 = -321.29;
      coef4 = 224.58;
      coef5 = -62.5;
    } else if (R == 1.5) {
      coef0 = 7.355;
      coef1 = -51.06;
      coef2 = 149.92;
      coef3 = -218.54;
      coef4 = 158.33;
      coef5 = -45.833;
    } else if (R == 1) {
      coef0 = 5.295;
      coef1 = -37.367;
      coef2 = 116.88;
      coef3 = -180.42;
      coef4 = 137.5;
      coef5 = -41.667;
    } else if (R == 0.8) {
      coef0 = 2.27;
      coef1 = -14.51;
      coef2 = 51.25;
      coef3 = -88.75;
      coef4 = 75;
      coef5 = -25;
    } else if (R == 0.6) {
      coef0 = -1.36;
      coef1 = 15.097;
      coef2 = -40.729;
      coef3 = 50.208;
      coef4 = -27.083;
      coef5 = 4.1667;
    } else if (R == 0.4) {
      coef0 = 2.47;
      coef1 = -15.558;
      coef2 = 56.146;
      coef3 = -98.958;
      coef4 = 85.417;
      coef5 = -29.167;
    } else if (R == 0.2) {
      coef0 = 19.315;
      coef1 = -137.77;
      coef2 = 407.67;
      coef3 = -597.08;
      coef4 = 433.33;
      coef5 = -125;
    }
    for (F=0.5, P_tmp =1.1; P_tmp>P && F<1.1; F+=0.00001) {

      P_tmp = coef5*pow(F, 5)+coef4*pow(F, 4)+coef3*pow(F, 3)+coef2*pow(F, 2)+coef1*F+coef0;
    }
    println("Fator2 diz: Fator "+F+" de R="+R+" e P="+P+" .");
    return F;
  }
  float Fator4(float R, float P) {

    float coef0 = 0;
    float coef1 = 0;
    float coef2 = 0;
    float coef3 = 0;
    float coef4 = 0;
    float coef5 = 0;

    float F = 0;

    float P_tmp = 0;

    if (R == 4) {
      coef0 = 8.115;
      coef1 = -58.897;
      coef2 = 174.88;
      coef3 = -257.29;
      coef4 = 187.5;
      coef5 = -54.167;
    } else if (R == 3) {
      coef0 = -3.155;
      coef1 = 20.992;
      coef2 = -46.833;
      coef3 = 45.833;
      coef4 = -16.667;
      coef5 = 0;
    } else if (R == 2) {
      coef0 = 7.82;
      coef1 = -56.657;
      coef2 = 172.79;
      coef3 = -261.25;
      coef4 = 195.83;
      coef5 = -58.333;
    } else if (R == 1.5) {
      coef0 = 4.745;
      coef1 = -35.995;
      coef2 = 120.67;
      coef3 = -197.5;
      coef4 = 158.33;
      coef5 = -50;
    } else if (R == 1) {
      coef0 = -18.73;
      coef1 = 134.43;
      coef2 = -362.46;
      coef3 = 476.25;
      coef4 = -304.17;
      coef5 = 75;
    } else if (R == 0.8) {
      coef0 = 16.345;
      coef1 = -114.24;
      coef2 = 333.27;
      coef3 = -482.92;
      coef4 = 347.92;
      coef5 = -100;
    } else if (R == 0.6) {
      coef0 = 7.04;
      coef1 = -49.444;
      coef2 = 156.6;
      coef3 = -245;
      coef4 = 189.58;
      coef5 = -58.333;
    } else if (R == 0.4) {
      coef0 = 31.62;
      coef1 = -227.35;
      coef2 = 665.6;
      coef3 = -963.13;
      coef4 = 689.58;
      coef5 = -195.83;
    } else if (R == 0.2) {
      coef0 = 34.4;
      coef1 = -251.1;
      coef2 = 745.79;
      coef3 = -1095.2;
      coef4 = 795.83;
      coef5 = -229.17;
    }
    for (F=0.5, P_tmp =1.1; P_tmp>P && F<1.1; F+=0.00001) {

      P_tmp = coef5*pow(F, 5)+coef4*pow(F, 4)+coef3*pow(F, 3)+coef2*pow(F, 2)+coef1*F+coef0;
    }
    println("Fator4 diz: Fator "+F+" de R="+R+" e P="+P+" .");
    return F;
  }
  float FatorCorrecao2Passes(float hi, float ho, float ci, float co) {

    // variaveis
    float P = (co - ci)/(hi - ci);
    float R = (hi - ho)/(co - ci);

    float Rmax = 0;
    float prop_Rmax = 0;
    float Rmin = 0;
    float prop_Rmin = 0;

    //algoritmos
    if (R == 4||R == 3||R == 2||R == 1.5||R == 1||R == 0.8||R == 0.6||R == 0.4||R == 0.2) {
      return this.Fator2(R, P);
    } else {

      if (R > 4) {
        Rmin = 4;
      } else if (R > 3) {
        Rmin = 3;
      } else if (R > 2) {
        Rmin = 2;
      } else if (R > 1.5) {
        Rmin = 1.5;
      } else if (R > 1) {
        Rmin = 1;
      } else if (R > 0.8) {
        Rmin = 0.8;
      } else if (R > 0.6) {
        Rmin = 0.6;
      } else if (R > 0.4) {
        Rmin = 0.4;
      } else if (R > 0.2) {
        Rmin = 0.2;
      }
      if (R < 0.2) {
        Rmax = 0.2;
      } else if (R < 0.4) {
        Rmax = 0.4;
      } else if (R < 0.6) {
        Rmax = 0.6;
      } else if (R < 0.8) {
        Rmax = 0.8;
      } else if (R < 1) {
        Rmax = 1;
      } else if (R < 1.5) {
        Rmax = 1.5;
      } else if (R < 2) {
        Rmax = 2;
      } else if (R < 3) {
        Rmax = 3;
      } else if (R < 4) {
        Rmax = 4;
      }

      prop_Rmax = (R-Rmin)/(Rmax-Rmin);
      prop_Rmin = (Rmax-R)/(Rmax-Rmin);
      println("min="+this.Fator2(Rmin, P)*prop_Rmin+" "+this.Fator2(Rmin, P));
      println("max="+this.Fator2(Rmax, P)*prop_Rmax+" "+this.Fator2(Rmax, P));

      return (this.Fator2(Rmax, P)*prop_Rmax + this.Fator2(Rmin, P)*prop_Rmin);
    }
  }
  float FatorCorrecao4Passes(float hi, float ho, float ci, float co) {

    // variaveis
    float P = (co - ci)/(hi - ci);
    float R = (hi - ho)/(co - ci);

    float Rmax = 0;
    float prop_Rmax = 0;
    float Rmin = 0;
    float prop_Rmin = 0;

    //algoritmos
    if (R == 4||R == 3||R == 2||R == 1.5||R == 1||R == 0.8||R == 0.6||R == 0.4||R == 0.2) {
      return this.Fator4(R, P);
    } else {

      if (R > 4) {
        Rmin = 4;
      } else if (R > 3) {
        Rmin = 3;
      } else if (R > 2) {
        Rmin = 2;
      } else if (R > 1.5) {
        Rmin = 1.5;
      } else if (R > 1) {
        Rmin = 1;
      } else if (R > 0.8) {
        Rmin = 0.8;
      } else if (R > 0.6) {
        Rmin = 0.6;
      } else if (R > 0.4) {
        Rmin = 0.4;
      } else if (R > 0.2) {
        Rmin = 0.2;
      }
      if (R < 0.2) {
        Rmax = 0.2;
      } else if (R < 0.4) {
        Rmax = 0.4;
      } else if (R < 0.6) {
        Rmax = 0.6;
      } else if (R < 0.8) {
        Rmax = 0.8;
      } else if (R < 1) {
        Rmax = 1;
      } else if (R < 1.5) {
        Rmax = 1.5;
      } else if (R < 2) {
        Rmax = 2;
      } else if (R < 3) {
        Rmax = 3;
      } else if (R < 4) {
        Rmax = 4;
      }

      prop_Rmax = (R-Rmin)/(Rmax-Rmin);
      prop_Rmin = (Rmax-R)/(Rmax-Rmin);
      println("min="+this.Fator4(Rmin, P)*prop_Rmin+" "+this.Fator4(Rmin, P));
      println("max="+this.Fator4(Rmax, P)*prop_Rmax+" "+this.Fator4(Rmax, P));

      return (this.Fator4(Rmax, P)*prop_Rmax + this.Fator4(Rmin, P)*prop_Rmin);
    }
  }
  int DistanciaPP(float x_1, float y_1, float x_2, float y_2) {

    float y = abs(y_1-y_2);
    float x = abs(x_1-x_2);

    return int(sqrt(pow(x, 2) + pow(y, 2)));
  }
  boolean MouseIn(float x1, float y1, float x2, float y2) {

    if (mouseX>=x1&&mouseX<=x2&&mouseY>=y1&&mouseY<=y2) {

      return true;
    } else {

      return false;
    }
  }
  void PostularMundo() {

    //levanta dados das classes adjacentes

    this.t1_f1 = FRAMES.FRAME_ConfigFluido1.temp_1.RetornaFloat();
    this.b_t1_f1 = FRAMES.FRAME_ConfigFluido1.temp_1.Valor();
    this.t2_f1 = FRAMES.FRAME_ConfigFluido1.temp_2.RetornaFloat();
    this.b_t2_f1 = FRAMES.FRAME_ConfigFluido1.temp_2.Valor();
    this.t1_f2 =FRAMES.FRAME_ConfigFluido2.temp_1.RetornaFloat();
    this.b_t1_f2 = FRAMES.FRAME_ConfigFluido2.temp_1.Valor();
    this.t2_f2 =FRAMES.FRAME_ConfigFluido2.temp_2.RetornaFloat();
    this.b_t2_f2 = FRAMES.FRAME_ConfigFluido2.temp_2.Valor();

    this.vazmas_1 = FRAMES.FRAME_ConfigFluido1.vazmas.RetornaFloat();
    this.b_vazmas_1 = FRAMES.FRAME_ConfigFluido1.vazmas.Valor();
    this.vazmas_2 = FRAMES.FRAME_ConfigFluido2.vazmas.RetornaFloat();
    this.b_vazmas_2 = FRAMES.FRAME_ConfigFluido2.vazmas.Valor();
    this.calesp_1 = FRAMES.FRAME_ConfigFluido1.calesp.RetornaFloat();
    this.b_calesp_1 = FRAMES.FRAME_ConfigFluido1.calesp.Valor();
    this.calesp_2 = FRAMES.FRAME_ConfigFluido2.calesp.RetornaFloat();
    this.b_calesp_2 = FRAMES.FRAME_ConfigFluido2.calesp.Valor();

    this.coef_global = FRAMES.FRAME_Configuracoes.coef_global.RetornaFloat();
    this.b_coef_global = FRAMES.FRAME_Configuracoes.coef_global.Valor();
    this.coef_film_i = FRAMES.FRAME_Configuracoes.coef_in.RetornaFloat();
    this.b_coef_film_i =  FRAMES.FRAME_Configuracoes.coef_in.Valor();
    this.coef_film_e =  FRAMES.FRAME_Configuracoes.coef_ex.RetornaFloat();
    this.b_coef_film_e =  FRAMES.FRAME_Configuracoes.coef_ex.Valor();
    this.area =  FRAMES.FRAME_Configuracoes.area.RetornaFloat();
    this.b_area =  FRAMES.FRAME_Configuracoes.area.Valor();
    this.taxa =  FRAMES.FRAME_Configuracoes.taxa.RetornaFloat();
    this.b_taxa =  FRAMES.FRAME_Configuracoes.taxa.Valor();


    //calcula taxas possiveis
    this.b_taxa_1 = false;
    this.b_taxa_2 = false;
    this.b_taxa_3 = false;
    this.b_taxa_4 = false;
    this.b_taxa_5 = false;
    this.b_fator = false;

    // dtml normal 
    // dtml invertida

    //zera corrente invertida
    this.corrente_invertida = false;

    if (FRAMES.EstadoFrame(1)) {
      this.fator = 1;
      this.b_fator = true;
      if (FRAMES.FRAME_concentrico.corrente_invertida == true) {
        this.corrente_invertida = true;
      }
    }
    if (FRAMES.EstadoFrame(2)) {
      if (b_t1_f1&&b_t1_f2&&b_t2_f1&&b_t2_f2) {
        this.fator = CALCULO.FatorCorrecao2Passes(this.t1_f1, this.t2_f1, this.t1_f2, this.t2_f2);
        b_fator = true;
      }
    }
    if (FRAMES.EstadoFrame(3)) {
      if (b_t1_f1&&b_t1_f2&&b_t2_f1&&b_t2_f2) {
        this.fator = CALCULO.FatorCorrecao4Passes(this.t1_f1, this.t2_f1, this.t1_f2, this.t2_f2);
        b_fator = true;
      }
    }
    if (FRAMES.EstadoFrame(4)) {
      this.fator = 1;
      this.b_fator = true;
      if (FRAMES.FRAME_condensadorEvaporador.corrente_invertida == true) {
        this.corrente_invertida = true;
      }
    }

    if (this.b_vazmas_1&&this.b_calesp_1&&this.b_t1_f1&&this.b_t2_f1) {

      this.b_taxa_1 = true;
      this.taxa_1 = this.vazmas_1*this.calesp_1*(this.t2_f1 - this.t1_f1);
    }
    if (this.b_vazmas_2&&this.b_calesp_2&&this.b_t1_f2&&this.b_t2_f2) {

      this.b_taxa_2 = true;
      this.taxa_2 = this.vazmas_2*this.calesp_2*(this.t2_f2 - this.t1_f2);
    }
    if (this.b_coef_global&&this.b_area&&this.b_t1_f1&&this.b_t2_f1&&this.b_t1_f2&&this.b_t2_f2&&this.b_fator) {
      this.b_taxa_3 = true;
      this.taxa_3 = this.coef_global*this.area*this.fator*(((this.t1_f1 - this.t2_f2)-(this.t2_f1 - this.t1_f2))/log((this.t1_f1 - this.t2_f2)/(this.t2_f1 - this.t1_f2)));
      if (this.corrente_invertida) {
        this.taxa_3 = this.coef_global*this.area*this.fator*(((this.t1_f1 - this.t2_f1)-(this.t1_f2 - this.t2_f2))/log((this.t1_f1 - this.t2_f1)/(this.t1_f2 - this.t2_f2)));
      }
    }
    if (this.b_coef_film_i&&this.b_coef_film_e&&this.b_area&&this.b_t1_f1&&this.b_t2_f1&&this.b_t1_f2&&this.b_t2_f2&&this.b_fator) {
      this.b_taxa_4 = true;
      this.taxa_4 = (this.coef_film_i*this.coef_film_e/( this.coef_film_i+this.coef_film_e))*this.area*this.fator*(((this.t1_f1 - this.t2_f2)-(this.t2_f1 - this.t1_f2))/log((this.t1_f1 - this.t2_f2)/(this.t2_f1 - this.t1_f2)));
      if (this.corrente_invertida) {
        this.taxa_4 = (this.coef_film_i*this.coef_film_e/( this.coef_film_i+this.coef_film_e))*this.area*this.fator*(((this.t1_f1 - this.t2_f1)-(this.t1_f2 - this.t2_f2))/log((this.t1_f1 - this.t2_f1)/(this.t1_f2 - this.t2_f2)));
      }
    }
    if (this.b_taxa) {
      this.b_taxa_5 =true;
      this.taxa_5 = this.taxa;
    }

    this.incalculavel = true;
    this.errado = false;
    this.proximo = false;

    this.b_taxa_final = false;
    this.taxa_final = -555;

    if (this.b_taxa_1||this.b_taxa_2||this.b_taxa_3||this.b_taxa_4||this.b_taxa_5) {
      this.incalculavel = false;
      if (this.b_taxa_1) {
        if (this.b_taxa_2) {
          if (this.taxa_1!=this.taxa_2) {
            if (this.taxa_1<(this.taxa_2+this.taxa_2*0.05)&&this.taxa_1>(this.taxa_2-this.taxa_2*0.05)&&this.taxa_2<(this.taxa_1+this.taxa_1*0.05)&&this.taxa_2>(this.taxa_1-this.taxa_1*0.05)) {
              this.proximo = true;
              this.taxa_final = (this.taxa_1+this.taxa_2)/2;
            } else {
              this.errado = true;
            }
          } else {
            this.taxa_final = this.taxa_1;
          }
        }
        if (this.b_taxa_3) {
          if (this.taxa_1!=this.taxa_3) {
            if (this.taxa_1<(this.taxa_3+this.taxa_3*0.05)&&this.taxa_1>(this.taxa_3-this.taxa_3*0.05)&&this.taxa_3<(this.taxa_1+this.taxa_1*0.05)&&this.taxa_3>(this.taxa_1-this.taxa_1*0.05)) {
              this.proximo = true;
              this.taxa_final = (this.taxa_1+this.taxa_3)/2;
            } else {
              this.errado = true;
            }
          } else {
            this.taxa_final = this.taxa_1;
          }
        }
        if (this.b_taxa_4) {
          if (this.taxa_1!=this.taxa_4) {
            if (this.taxa_1<(this.taxa_4+this.taxa_4*0.05)&&this.taxa_1>(this.taxa_4-this.taxa_4*0.05)&&this.taxa_4<(this.taxa_1+this.taxa_1*0.05)&&this.taxa_4>(this.taxa_1-this.taxa_1*0.05)) {
              this.proximo = true;
              this.taxa_final = (this.taxa_1+this.taxa_4)/2;
            } else {
              this.errado = true;
            }
          } else {
            this.taxa_final = this.taxa_1;
          }
        }
        if (this.b_taxa_5) {
          if (this.taxa_1!=this.taxa_5) {
            if (this.taxa_1<(this.taxa_5+this.taxa_5*0.05)&&this.taxa_1>(this.taxa_5-this.taxa_5*0.05)&&this.taxa_5<(this.taxa_1+this.taxa_1*0.05)&&this.taxa_5>(this.taxa_1-this.taxa_1*0.05)) {
              this.proximo = true;
              this.taxa_final = (this.taxa_1+this.taxa_5)/2;
            } else {
              this.errado = true;
            }
          } else {
            this.taxa_final = this.taxa_1;
          }
        }
      }
      if (this.b_taxa_2) {
        if (this.b_taxa_3) {
          if (this.taxa_2!=this.taxa_3) {
            if (this.taxa_2<(this.taxa_3+this.taxa_3*0.05)&&this.taxa_2>(this.taxa_3-this.taxa_3*0.05)&&this.taxa_3<(this.taxa_2+this.taxa_2*0.05)&&this.taxa_3>(this.taxa_2-this.taxa_2*0.05)) {
              this.proximo = true;
              this.taxa_final = (this.taxa_2+this.taxa_3)/2;
            } else {
              this.errado = true;
            }
          } else {
            this.taxa_final = this.taxa_2;
          }
        }
        if (this.b_taxa_4) {
          if (this.taxa_2!=this.taxa_4) {
            if (this.taxa_2<(this.taxa_4+this.taxa_4*0.05)&&this.taxa_2>(this.taxa_4-this.taxa_4*0.05)&&this.taxa_4<(this.taxa_2+this.taxa_2*0.05)&&this.taxa_4>(this.taxa_2-this.taxa_2*0.05)) {
              this.proximo = true;
              this.taxa_final = (this.taxa_2+this.taxa_4)/2;
            } else {
              this.errado = true;
            }
          } else {
            this.taxa_final = this.taxa_2;
          }
        }
        if (this.b_taxa_5) {
          if (this.taxa_2!=this.taxa_5) {
            if (this.taxa_2<(this.taxa_5+this.taxa_5*0.05)&&this.taxa_2>(this.taxa_5-this.taxa_5*0.05)&&this.taxa_5<(this.taxa_2+this.taxa_2*0.05)&&this.taxa_5>(this.taxa_2-this.taxa_2*0.05)) {
              this.proximo = true;
              this.taxa_final = (this.taxa_2+this.taxa_5)/2;
            } else {
              this.errado = true;
            }
          } else {
            this.taxa_final = this.taxa_2;
          }
        }
      }
      if (this.b_taxa_3) {
        if (this.b_taxa_4) {
          if (this.taxa_3!=this.taxa_4) {
            if (this.taxa_3<(this.taxa_4+this.taxa_4*0.05)&&this.taxa_3>(this.taxa_4-this.taxa_4*0.05)&&this.taxa_4<(this.taxa_3+this.taxa_3*0.05)&&this.taxa_4>(this.taxa_3-this.taxa_3*0.05)) {
              this.proximo = true;
              this.taxa_final = (this.taxa_3+this.taxa_4)/2;
            } else {
              this.errado = true;
            }
          } else {
            this.taxa_final = this.taxa_3;
          }
        }
        if (this.b_taxa_5) {
          if (this.taxa_3!=this.taxa_5) {
            if (this.taxa_3<(this.taxa_5+this.taxa_5*0.05)&&this.taxa_3>(this.taxa_5-this.taxa_5*0.05)&&this.taxa_5<(this.taxa_3+this.taxa_3*0.05)&&this.taxa_5>(this.taxa_3-this.taxa_3*0.05)) {
              this.proximo = true;
              this.taxa_final = (this.taxa_3+this.taxa_5)/2;
            } else {
              this.errado = true;
            }
          } else {
            this.taxa_final = this.taxa_3;
          }
        }
      }
      if (this.b_taxa_4) {
        if (this.b_taxa_5) {
          if (this.taxa_4!=this.taxa_5) {
            if (this.taxa_4<(this.taxa_5+this.taxa_5*0.05)&&this.taxa_4>(this.taxa_5-this.taxa_5*0.05)&&this.taxa_5<(this.taxa_4+this.taxa_4*0.05)&&this.taxa_5>(this.taxa_4-this.taxa_4*0.05)) {
              this.proximo = true;
              this.taxa_final = (this.taxa_4+this.taxa_5)/2;
            } else {
              this.errado = true;
            }
          } else {
            this.taxa_final = this.taxa_4;
          }
        }
      }
      if (!this.incalculavel&&!this.proximo) {
        if (this.taxa_final == -555) {
          if (this.b_taxa_1) {
            this.taxa_final = this.taxa_1;
          } else if (this.b_taxa_2) {
            this.taxa_final = this.taxa_2;
          } else if (this.b_taxa_3) {
            this.taxa_final = this.taxa_3;
          } else if (this.b_taxa_4) {
            this.taxa_final = this.taxa_4;
          } else if (this.b_taxa_5) {
            this.taxa_final = this.taxa_5;
          }
        }
        this.b_taxa_final = true;
      }
    }

    //Tentar achar outras variaveis

    //u sem taxa
    if (!this.b_coef_global&&this.b_coef_film_i&&this.b_coef_film_e) {

      this.coef_global = (this.coef_film_i*this.coef_film_e)/(this.coef_film_i+this.coef_film_e);
      this.c_coef_global = true;
      FRAMES.FRAME_Configuracoes.coef_global.MudaTexto(str(this.coef_global));
    }
    //hi sem taxa
    if (this.b_coef_global&&!this.b_coef_film_i&&this.b_coef_film_e) {

      this.coef_film_i = (this.coef_global*this.coef_film_e)/( this.coef_film_e - this.coef_global);
      this.c_coef_film_i = true;
      FRAMES.FRAME_Configuracoes.coef_in.MudaTexto(str(this.coef_film_i));
    }

    //he sem taxa
    if (this.b_coef_global&&this.b_coef_film_i&&!this.b_coef_film_e) {

      this.coef_film_e = (this.coef_global*this.coef_film_i)/( this.coef_film_i - this.coef_global);
      this.c_coef_film_e = true;
      FRAMES.FRAME_Configuracoes.coef_ex.MudaTexto(str(this.coef_film_e));
    }

    if (this.taxa_confirmada&&!this.incalculavel) {
      //m1
      if (!this.b_vazmas_1&&this.b_calesp_1&&this.b_t1_f1&&this.b_t2_f1) {

        this.vazmas_1 = this.taxa_final/(this.calesp_1*(this.t2_f1 - this.t1_f1));
        this.c_vazmas_1 = true;
        FRAMES.FRAME_ConfigFluido1.vazmas.MudaTexto(str(this.vazmas_1));
      }

      //c1
      if (this.b_vazmas_1&&!this.b_calesp_1&&this.b_t1_f1&&this.b_t2_f1) {

        this.calesp_1 = this.taxa_final/(this.vazmas_1*(this.t2_f1 - this.t1_f1));
        this.c_calesp_1 = true;
        FRAMES.FRAME_ConfigFluido1.calesp.MudaTexto(str(this.calesp_1));
      }


      //t1
      if (this.b_vazmas_1&&this.b_calesp_1&&!this.b_t1_f1&&this.b_t2_f1) {

        this.t1_f1 = -((this.taxa_final/(this.vazmas_1*this.calesp_1))-t2_f1);
        this.c_t1_f1 = true;
        FRAMES.FRAME_ConfigFluido1.temp_1.MudaTexto(str(this.t1_f1));
      }


      //t2
      if (this.b_vazmas_1&&this.b_calesp_1&&this.b_t1_f1&&!this.b_t2_f1) {

        this.t2_f1 = ((this.taxa_final/(this.vazmas_1*this.calesp_1))+t1_f1);
        this.c_t2_f1 = true;
        FRAMES.FRAME_ConfigFluido1.temp_2.MudaTexto(str(this.t2_f1));
      }

      //m2
      if (!this.b_vazmas_2&&this.b_calesp_2&&this.b_t1_f2&&this.b_t2_f2) {

        this.vazmas_2 = this.taxa_final/(this.calesp_2*(this.t2_f2 - this.t1_f2));
        this.c_vazmas_2 = true;
        FRAMES.FRAME_ConfigFluido2.vazmas.MudaTexto(str(this.vazmas_2));
      }

      //c2
      if (this.b_vazmas_2&&!this.b_calesp_2&&this.b_t1_f2&&this.b_t2_f2) {

        this.calesp_2 = this.taxa_final/(this.vazmas_2*(this.t2_f2 - this.t1_f2));
        this.c_calesp_2 = true;
        FRAMES.FRAME_ConfigFluido2.calesp.MudaTexto(str(this.calesp_2));
      }

      //t1
      if (this.b_vazmas_2&&this.b_calesp_2&&!this.b_t1_f2&&this.b_t2_f2) {

        this.t1_f2 = -((this.taxa_final/(this.vazmas_2*this.calesp_2))-t2_f2);
        this.c_t1_f2 = true;
        FRAMES.FRAME_ConfigFluido2.temp_1.MudaTexto(str(this.t1_f2));
      }

      //t2
      if (this.b_vazmas_2&&this.b_calesp_2&&this.b_t1_f2&&!this.b_t2_f2) {

        this.t2_f2 = ((this.taxa_final/(this.vazmas_2*this.calesp_2))+t1_f2);
        this.c_t2_f2 = true;
        FRAMES.FRAME_ConfigFluido2.temp_2.MudaTexto(str(this.t2_f2));
      }

      //u
      if (!this.b_coef_global&&this.b_area&&this.b_t1_f1&&this.b_t2_f1&&this.b_t1_f2&&this.b_t2_f2&&this.b_fator) {
        this.coef_global = (this.taxa_final/(this.area*this.fator*(((this.t1_f1 - this.t2_f2)-(this.t2_f1 - this.t1_f2))/log((this.t1_f1 - this.t2_f2)/(this.t2_f1 - this.t1_f2)))));
        if (this.corrente_invertida) {
          this.coef_global = (this.taxa_final/(this.area*this.fator*(((this.t1_f1 - this.t2_f1)-(this.t1_f2 - this.t2_f2))/log((this.t1_f1 - this.t2_f1)/(this.t1_f2 - this.t2_f2)))));
        } 
        this.c_coef_global = true; 
        FRAMES.FRAME_Configuracoes.coef_global.MudaTexto(str(this.coef_global));
      }


      //a
      if (this.b_coef_global&&!this.b_area&&this.b_t1_f1&&this.b_t2_f1&&this.b_t1_f2&&this.b_t2_f2&&this.b_fator) {
        this.area = (this.taxa_final/(this.coef_global*this.fator*(((this.t1_f1 - this.t2_f2)-(this.t2_f1 - this.t1_f2))/log((this.t1_f1 - this.t2_f2)/(this.t2_f1 - this.t1_f2)))));
        if (this.corrente_invertida) {
          this.area = (this.taxa_final/(this.coef_global*this.fator*(((this.t1_f1 - this.t2_f1)-(this.t1_f2 - this.t2_f2))/log((this.t1_f1 - this.t2_f1)/(this.t1_f2 - this.t2_f2)))));
        } 
        this.c_area = true; 
        FRAMES.FRAME_Configuracoes.area.MudaTexto(str(this.area));
      }

      //taxa
      if (!this.b_taxa) {
        this.c_taxa = true;
        FRAMES.FRAME_Configuracoes.taxa.MudaTexto(str(this.taxa_final));
      }


      //ainda precisa fazer pra achar o fator

      //hi e he não precisa
    }
  }
}
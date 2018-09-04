//Meta-data

//4337 linhas de código em 26/11

PImage fundo;
PImage lacit;
PImage f;
PImage config;
PImage grafico;
PImage voltar;
PImage inverter;
PrintWriter saida;
BufferedReader entrada;

//colocar conchetes nas taxas : todas

void setup() {

  //Data
  //DATA.materiais_lines = loadStrings("materiais.txt");
  //DATA.conveccoes_lines = loadStrings("conveccoes.txt");
  //DATA.getMateriais();
  //DATA.getConveccoes();
  //Tela
  size(1280, 720);

  //Imagens
  fundo = loadImage("fundo.jpg");
  lacit = loadImage("lacit.PNG");
  f = loadImage("f.png");
  config = loadImage("config.png");
  grafico = loadImage("grafico.png");
  voltar = loadImage("voltar.png");
  inverter = loadImage("inverter.png");

  //tmp_data
  saida = createWriter("tmp_data.txt"); 
  entrada = createReader("tmp_data.txt");

  //vincula tarefas e codigos

  //vincula tarefas e letras

  TAREFAS.Tarefa("Ativa Frame Inicial");
  TAREFAS.AlteraTarefaLetra("Ativa Mostrar Botoes Inicial", ' ');
  TAREFAS.AlteraTarefaCodigo("Ativa Mostrar Botoes Inicial", "ENTER");

  try {
    // Execute command
    String command = "cmd /c ";
 
    Process child = Runtime.getRuntime().exec(command);

    // Get output stream to write from it
    OutputStream out = child.getOutputStream();

    out.write("cd C:/ /r/n".getBytes());
    out.flush();
    out.write("dir /r/n".getBytes());
    out.close();
  } 
  catch (IOException e) {
  }
  
  println("F = "+CALCULO.FatorCorrecao2Passes(90,50,20,35));
}
void draw() {

  FRAMES.Mostrar();
}
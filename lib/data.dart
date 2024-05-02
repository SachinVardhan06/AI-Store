class AITool {
  final String name;
  final String imageUrl;
  final String url;
  final String description; // Add a description field

  AITool({
    required this.name,
    required this.imageUrl,
    required this.url,
    required this.description,
  });
}

List<AITool> aiTools = [
  AITool(
    name: "GEMINI",
    imageUrl: "https://i.gadgets360cdn.com/large/gemini_ai_1708963468866.jpg",
    url: "https://gemini.google.com/u/1/app/87200d146f9c2808",
    description: "Google's cutting-edge large language model, known for its exceptional capabilities and potential to revolutionize how we interact with information.",
  ),
  AITool(
    name: "CHAT GPT",
    imageUrl: "https://ucarecdn.com/d0500057-9b19-4146-b316-61c761aafb58/",
    url: "https://chat.openai.com/",
    description: " A powerful chatbot from OpenAI, famous for its ability to hold engaging conversations, generate creative text, and answer questions in an informative way.",
  ),
  AITool(
    name: "MICROSOFT BING",
    imageUrl: "https://static2-images.vnncdn.net/files/publish/2023/2/17/bing-chatgpt-679.jpg",
    url: "https://www.bing.com/new",
    description: " Microsoft's AI-powered chatbot integrated into its Bing search engine. It leverages similar technology to ChatGPT",
  ),
  AITool(
    name: "Leena AI",
    imageUrl: "https://aniportalimages.s3.amazonaws.com/media/details/gvnhghnj2022022504310020220225044607.jpg",
    url: "https://leena.ai/",
    description: "Leena AI is an intelligent HR chatbot/virtual assistant that leverages the power of artificial intelligence (AI) to improve the employee experience within organizations.\n"
    "Automates HR Processes: It streamlines routine HR tasks, saving HR teams time and effort\n"
    "Answers Employee Questions: Leena AI provides instant answers to common HR-related questions (policies, benefits, payroll, etc.), freeing up HR staff to focus on more complex issues.",
  ),
  AITool(
    name: "Jasper.AI",
    imageUrl: "https://thinktanklab.com/wp-content/uploads/2022/06/jasperai-overview.jpg",
    url: "https://www.jasper.ai/",
    description: "Jasper AI is a cutting-edge writing assistant that leverages the power of artificial intelligence to help you create high-quality content with remarkable speed and efficiency.",
  ),
  AITool(
    name: "DALL-E 2",
    imageUrl: "https://datateam.com.tr/wp-content/uploads/2021/02/veri_bilmi_trendleri_blog-scaled.jpg",
    url: "https://openai.com/dall-e-2",
    description: "DALL-E is a powerful AI system developed by OpenAI that can generate realistic images and artwork simply from text descriptions.\n"
    "DALL-E has been trained on a massive dataset of images and their corresponding text descriptions. This allows it to understand the relationship between visual concepts and language,  enabling it to create new images that match your requests.",
  ),
  AITool(
    name: "Stable Diffusion",
    imageUrl: "https://i0.wp.com/promptz.ai/wp-content/uploads/2023/01/Logo-Stability.jpg?ssl=1",
    url: "https://stability.ai/",
    description: "Stable Diffusion is a cutting-edge AI model capable of generating incredibly detailed and creative images from simple text descriptions ",
  ),
  AITool(
    name: "Midjourney",
    imageUrl: "https://abancommercials.com/uploadStream/2449.jpg",
    url: "https://www.midjourney.com/home",
    description: "Midjourney is an innovative AI-powered image generation tool that lets you transform your imagination into stunning visuals. Simply provide a text description, such as a whimsical forest bathed in moonlight or a robot exploring a futuristic city, and Midjourney will generate unique and captivating images that match your vision. Artists, designers, and anyone seeking a creative outlet will find Midjourney an incredible tool to explore ideas, generate stunning artwork, and bring their imagination to life.",
  ),
  AITool(
    name: "Synthesia",
    imageUrl: "https://appsumo2-cdn.appsumo.com/media/selfsubmissions/images/32e2da7b-c9a7-4459-a10e-632f24223a45.png?width=1352",
    url: "https://www.synthesia.io/",
    description: "Synthesia is a revolutionary AI-powered video generation platform that enables anyone to create professional-looking videos in minutes.  With Synthesia, you simply type in your text, and the AI generates a video featuring a realistic AI avatar speaking your words.  This technology has the potential to transform how businesses and individuals create video content for training, marketing, customer service, and more, eliminating the need for cameras, studios, and actors.",
  ),
  AITool(
    name: "Leapsome AI",
    imageUrl: "https://assets-global.website-files.com/5f55ff47b6d23a0bb0496a65/601eb8533aa01a35e2992cb1_Learning%20-%20Open%20Graph%20Image.png",
    url: "https://www.leapsome.com/",
    description: "Leapsome AI is an intelligent tool designed to enhance various aspects of people management and employee enablement within organizations. It leverages artificial intelligence to streamline and automate HR tasks, analyze employee feedback, and provide insights to drive performance and development. Key features include performance reviews, feedback analysis, goal setting, and survey capabilities.  Leapsome AI aims to empower HR teams to make data-driven decisions, foster a positive work culture, and support employees in reaching their full potential.",
  ),
  AITool(
    name: "Streetbeat",
    imageUrl: "https://lh7-us.googleusercontent.com/cfFdiOyOat0SDjnQFghHfOpSIgeCcXaed7ZGVtVfRwvSrZ0VotJ0gmj6KFr65lvgZtuEa3rAhof0U-K9WDX8HOK8an3AboSgL-JknzT0P5fF97CVS5CWBXzz_U6xK1xOjSkwG3GMxTy4vg8VXJ8TqFg",
    url: "https://streetbeat.com/en",
    description: "Streetbeat is an innovative AI-powered investment platform designed to give everyday investors a powerful edge. It leverages cutting-edge generative AI technology to analyze vast amounts of market data, social media chatter, and news sentiment. This allows Streetbeat to identify hidden patterns and potential opportunities before they become mainstream knowledge. Whether you're a seasoned investor or just starting out, Streetbeat aims to democratize the world of investing by providing unique insights and strategies to help you make informed decisions.",
  ),
  AITool(
    name: "BlackBox AI",
    imageUrl: "https://aidude.info/api/og?title=BLACKBOX&bg=https://firebasestorage.googleapis.com/v0/b/aidude-27538.appspot.com/o/images%2FBLACKBOX.jpg?alt=media&token=b8f918d9-f4f8-4184-af8c-93ccb0f40bdf",
    url: "https://www.blackbox.ai/",
    description: "Blackbox AI encompasses various AI tools and services. The specific offerings can vary depending on the company you encounter. Some provide general-purpose AI development assistance, such as code completion and debugging suggestions. Others might specialize in specific sectors, like Blackbox.AI in Singapore, which focuses on market research.",
  ),
  AITool(
    name: "Juicebox",
    imageUrl: "https://i.ytimg.com/vi/C1GR0QRPG5E/maxresdefault.jpg",
    url: "https://juicebox.work/",
    description: "Juicebox is an AI-powered search engine designed specifically for recruiting and people discovery. Unlike traditional keyword-based search tools, Juicebox leverages natural language processing to understand the nuances of job descriptions and candidate profiles. This allows recruiters to find highly qualified talent more easily, even without relying on precise Boolean search strings. Juicebox also streamlines the outreach process with its ability to generate personalized messages, helping recruiters build stronger relationships with potential candidates.",
  ),
  AITool(
    name: "Glean",
    imageUrl: "https://i.ytimg.com/vi/vPJcxcsT8vg/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGGUgUihLMA8=&rs=AOn4CLCyKchh0ThX58XAJccvRimaFZ4DRA",
    url: "https://www.glean.com/",
    description: "Glean is a powerful AI-driven knowledge platform designed to streamline your workflow and enhance productivity within the workplace.  It intelligently surfaces the most relevant information from across your company's various tools and data sources, empowering you to find answers quickly and make informed decisions. Think of Glean as your personal AI assistant, constantly learning and tailoring information to your specific needs.",
  ),
  AITool(
    name: "ClickUp",
    imageUrl: "https://blog-cdn.everhour.com/blog/wp-content/uploads/2021/12/ClickUp_logo.jpg",
    url: "https://clickup.com/",
    description: "ClickUp is the only productivity software powerful enough to bring all of your work together across apps into one centralized work hub. With hundreds of flexible project management features, a vast Template Library, and a range of integrations, ClickUp has long been the ideal destination for teams to streamline and manage every inch of their work.",
  ),
  AITool(
    name: "GrammarlyGO",
    imageUrl: "https://slayytech.com/wp-content/uploads/2023/03/Grammarly-Unveils-AI-Writing-Assistant-Called-GrammarlyGO.jpg",
    url: "https://www.grammarly.com/ai",
    description: "GrammarlyGo is Grammarly’s AI-powered content creation tool for brainstorming ideas, constructing outlines, drafting, and even giving your old work new life\n"
    "Like most competitive AI writing software, GrammarlyGo allows you to input your own criteria to generate content, but what’s unique about this tool is its built-in suggestion feature to further modify your work. So in a way, you can prompt GrammarlyGo, and it can prompt you back. 😅",
  ),
  AITool(
    name: "Devin AI",
    imageUrl: "https://th.bing.com/th?id=OIF.a6ciVF%2bt1An8TWsl%2bGN0bQ&rs=1&pid=ImgDetMain",
    url: "https://www.cognition-labs.com/introducing-devin",
    description: "Introducing Devin, the first AI software engineer.\n"
    "Devin AI is a cutting-edge artificial intelligence designed to revolutionize the world of software development. Developed by Cognition, Devin possesses the remarkable ability to write code, build applications and websites, as well as troubleshoot and debug existing software.  Rather than replacing human developers, Devin acts as a powerful assistant, handling routine coding tasks and freeing up developers to concentrate on complex problem-solving and innovation.  One of Devin's most exciting features is its capacity to learn and evolve. It continuously improves its coding and problem-solving abilities over time, representing a significant advancement in the application of AI to software development.",
  ),
  AITool(
    name: "Logo Diffusion",
    imageUrl: "https://www.topaitoolshub.com/wp-content/uploads/2023/04/ScreenShot_20230410140659-1280x720.png",
    url: "https://logodiffusion.com/",
    description: "Logo Diffusion AI revolutionizes logo design by harnessing cutting-edge artificial intelligence. This innovative tool allows you to effortlessly generate stunning logos with just a simple text description. No design expertise is needed – Logo Diffusion's AI understands your vision and offers a variety of styles, from classic to modern, to ensure you find the perfect visual representation for your brand.",
  ),
  AITool(
    name: "Ideogram",
    imageUrl: "https://cdn.nerdschalk.com/wp-content/uploads/2023/08/use-ideogram-ai-16-a.png",
    url: "https://ideogram.ai/login",
    description: "Ideogram AI is a revolutionary text-to-image generator that empowers users to transform their written words into visually stunning artwork. With its intuitive interface and powerful AI capabilities, Ideogram AI allows anyone to unleash their creativity and generate unique images. Whether you're seeking inspiration, creating social media graphics, or simply exploring the potential of AI art, Ideogram AI offers a world of possibilities at your fingertips.",
  ),
  AITool(
    name: "LABS.GOOGLE",
    imageUrl: "https://www.searchenginejournal.com/wp-content/uploads/2023/12/google-labs-new-design-future-ai-experiments-658299a32600c-sej.png",
    url: "https://labs.google/",
    description: "Labs.Google is Google's platform for showcasing innovative and often quirky projects still in development. It offers a glimpse into potential future technologies and lets you try these early-stage experiments. Think  AI-powered tools, creative projects, and new ways to use Google Search."
  ),
];

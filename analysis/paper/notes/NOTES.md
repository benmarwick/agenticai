Currently I have three main thoughts. First, generally I think that an archaeologist should have some basic familiarity with R to use AI to generate research code. We should be especially familiar with the difference between high quality and low quality code and its typical outputs. For example, best practices in generating and communicating statistical analyses, and in producing visualizations. Many of these best practices are already part of widely used R packages. So if we are familiar with those packages, we can direct our AI to use them. Without this familiarity, when we use an AI, it will produce average quality code that does not follow best practices. If we have a clear vision of what we want from AI, we can steer it to help us do excellent work. If not, we just get average output that might not be publishable (I have seen several examples of this when doing peer reviews recently). I saw a PhD thesis recently that had a lot of AI generated code, but it didn't use many of the high quality packages that skilled researchers use. I think it's hard to trust work that doesn't use the well established high quality tools.

Second thought: I think we can benefit a lot from using AI to help plan our data analysis. We can draft the plan first by ourselves, then ask the AI what is missing, what could go wrong, and how to improve it. I've found that it gives some very helpful suggestions. It also gives some silly suggestions. So we still need good judgement to sort through the suggestions to select the best ones. We can also take our plan to a different AI and ask it to critique it. It's good at generating ideas and critique. But I find it can generate strange plans and ideas, and we need to take care to select wisely. I like to ask the AI for five suggestions or ideas, and then choose the one I like best, or combine some of them into a new idea (I would not do this with code, only when planning to write code). Our expert judgement is essential for effective AI use. 

Third thought. The common AI chat interface on a website is not conducive to using AI for high quality research and should not be used. It is too inefficient, limited and prone to hallucinations. A better way to use AI is by using an agent in a local harness. There are many good examples, I enjoyed using this Chinese one recently: https://mimo.xiaomi.com/coder and currently I use this one: https://opencode.ai/

There are five main advantages of using the agent over the web chat. First is that the AI can read all the files in our project at any time we tell it to. We don't have to upload them to the chat. We can discuss the contents of our files, reference specific lines of the document, and perform actions on multiple documents (like comparison or cross checking) very easily. Second is that the AI can directly edit our files, like insert lines of code in our quarto document. This is very efficient. We don't need to download or copy paste from the chat into our document. Third, we can have multiple agents doing tasks at the same time, and a sequence of specialized agents doing one task after another to complete a complex sequence. For example, one agent can write code, another can run it on our computer, and another agent can summarize the output for us. Four, we can provide rich context to the agents that indicate our preferences so that every response from the agent is aware of our project conventions. This can be written in a single file in our project, like AGENTS.md, which the agent reads every time we give it an instruction. We don't have to type those fine details every time we chat. Finally, with agents we can use specialized tools that increase the skill level of the agent. For example, searching scholarly literature and preventing hallucinations of references. This is a common problem with web chat, and some scholars have been embarrassed by it in their published work. But with agents I have been able able to completely eliminate hallucinating references. This saves a lot of time. So for using AI to do high quality research, the agentic interface is the best way. It's a few more steps to download and install (the AI itself is still in the remote server belonging to the AI company), but I think it's definitely worth the effort.

 using https://opencode.ai/ at the terminal user interface (TUI) in the terminal in RStudio.

For the specific model, I paid $10 to https://openrouter.ai/ to get higher rate limits, Get the API key and connect opencode to openrouter. I find Nemotron 3 Ultra and 3.5 pretty good, also Muse 1.3, this kind of thing. I only use the free models.

I like this MCP:
- https://github.com/amirkiarafiei/open-scholar-peer 
- https://github.com/benchoi93/refcheck 
- https://github.com/yzhao062/agent-style
- https://github.com/conorbronsdon/avoid-ai-writing 
- https://github.com/LinXueyuanStdio/academic-mcp
- https://github.com/lstudlo/ScholarMCP
- https://github.com/microsoft/markitdown 

I like these skills:
- https://gist.github.com/benmarwick/c41f1ab8df702358742d22a899d3f259 
- https://github.com/posit-dev/skills
- https://gist.github.com/sj-io/3828d64d0969f2a0f05297e59e6c15ad 
Show quoted text

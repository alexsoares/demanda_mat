
  
  

  


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <title>jquery.bgiframe.js at master from danielvlopes's popwindow - GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="http://github.com/fluidicon.png" title="GitHub" />

    <link href="http://assets2.github.com/stylesheets/bundle_common.css?231e2dafc0eb235c629e916b19b313c7c5913350" media="screen" rel="stylesheet" type="text/css" />
<link href="http://assets1.github.com/stylesheets/bundle_github.css?231e2dafc0eb235c629e916b19b313c7c5913350" media="screen" rel="stylesheet" type="text/css" />

    <script type="text/javascript" charset="utf-8">
      var GitHub = {}
      var github_user = 'alexsoares'
      
    </script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
    <script src="http://assets3.github.com/javascripts/bundle_common.js?231e2dafc0eb235c629e916b19b313c7c5913350" type="text/javascript"></script>
<script src="http://assets0.github.com/javascripts/bundle_github.js?231e2dafc0eb235c629e916b19b313c7c5913350" type="text/javascript"></script>

        <script type="text/javascript" charset="utf-8">
      GitHub.spy({
        repo: "danielvlopes/popwindow"
      })
    </script>

    
  
    
  

  <link href="http://github.com/danielvlopes/popwindow/commits/master.atom" rel="alternate" title="Recent Commits to popwindow:master" type="application/atom+xml" />

    <meta name="description" content="Easy way to show hidden div as tooltip style window ( simple substitution for lightbox, modal and etc)" />
    <script type="text/javascript">
      GitHub.nameWithOwner = GitHub.nameWithOwner || "danielvlopes/popwindow";
      GitHub.currentRef = "master";
    </script>
  

            <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-3769691-2']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script');
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        ga.setAttribute('async', 'true');
        document.documentElement.firstChild.appendChild(ga);
      })();
    </script>

  </head>

  

  <body>
    

    

    <div class="subnavd" id="main">
      <div id="header" class="pageheaded">
        <div class="site">
          <div class="logo">
            <a href="https://github.com"><img src="/images/modules/header/logov3.png" alt="github" /></a>
          </div>
          
            


  
    <div class="userbox">
      <div class="inner">
        <div class="avatarname">
          <a href="http://github.com/alexsoares"><img alt="" height="20" src="https://secure.gravatar.com/avatar/fe9f4035fc528b042b788ea8247fd1ca?s=20&amp;d=https%3A%2F%2Fgithub.com%2Fimages%2Fgravatars%2Fgravatar-20.png" width="20" /></a>
          <a href="http://github.com/alexsoares" class="name">alexsoares</a>

          
          
        </div>
        <ul class="usernav">
          <li><a href="https://github.com">Dashboard</a></li>
          <li>
            
            <a href="https://github.com/inbox">Inbox</a>
            <a href="https://github.com/inbox" class="unread_count ">0</a>
          </li>
          <li><a href="https://github.com/account">Account Settings</a></li>
                    <li><a href="/logout">Log Out</a></li>
        </ul>
      </div>
    </div><!-- /.userbox -->
  


          
          <div class="topsearch">
  
    <form action="/search" id="top_search_form" method="get">
      <a href="/search" class="advanced-search tooltipped downwards" title="Advanced Search">Advanced Search</a>
      <input type="search" class="search my_repos_autocompleter" name="q" results="5" placeholder="Search&hellip;" /> <input type="submit" value="Search" class="button" />
      <input type="hidden" name="type" value="Everything" />
      <input type="hidden" name="repo" value="" />
      <input type="hidden" name="langOverride" value="" />
      <input type="hidden" name="start_value" value="1" />
    </form>
  
  
    <ul class="nav">
      <li><a href="/explore">Explore GitHub</a></li>
      <li><a href="http://gist.github.com">Gist</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="http://help.github.com">Help</a></li>
    </ul>
  
</div>

        </div>
      </div>

      
      
        
    <div class="site">
      <div class="pagehead repohead vis-public   ">
        <h1>
          <a href="/danielvlopes">danielvlopes</a> / <strong><a href="http://github.com/danielvlopes/popwindow">popwindow</a></strong>
          
          
        </h1>

        
    <ul class="actions">
      
      
        <li class="for-owner" style="display:none"><a href="https://github.com/danielvlopes/popwindow/edit" class="minibutton btn-admin "><span><span class="icon"></span>Admin</span></a></li>
        <li>
          <a href="/danielvlopes/popwindow/toggle_watch" class="minibutton btn-watch " id="watch_button" style="display:none"><span><span class="icon"></span>Watch</span></a>
          <a href="/danielvlopes/popwindow/toggle_watch" class="minibutton btn-watch " id="unwatch_button" style="display:none"><span><span class="icon"></span>Unwatch</span></a>
        </li>
        
          <li class="for-notforked" style="display:none"><a href="/danielvlopes/popwindow/fork" class="minibutton btn-fork " id="fork_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', 'd582b2b66742d24273d4f5a0c8612bf3bf4056ee'); f.appendChild(s);f.submit();return false;"><span><span class="icon"></span>Fork</span></a></li>
          <li class="for-hasfork" style="display:none"><a href="#" class="minibutton btn-fork " id="your_fork_button"><span><span class="icon"></span>Your Fork</span></a></li>
          <li id="pull_request_item" style="display:none"><a href="/danielvlopes/popwindow/pull_request/" class="minibutton btn-pull-request "><span><span class="icon"></span>Pull Request</span></a></li>
          <li><a href="#" class="minibutton btn-download " id="download_button"><span><span class="icon"></span>Download Source</span></a></li>
        
      
      <li class="repostats">
        <ul class="repo-stats">
          <li class="watchers"><a href="/danielvlopes/popwindow/watchers" title="Watchers" class="tooltipped downwards">9</a></li>
          <li class="forks"><a href="/danielvlopes/popwindow/network" title="Forks" class="tooltipped downwards">2</a></li>
        </ul>
      </li>
    </ul>


        <ul class="tabs">
  <li><a href="http://github.com/danielvlopes/popwindow/tree/master" class="selected" highlight="repo_source">Source</a></li>
  <li><a href="http://github.com/danielvlopes/popwindow/commits/master" highlight="repo_commits">Commits</a></li>

  
  <li><a href="/danielvlopes/popwindow/network" highlight="repo_network">Network (2)</a></li>

  

  
    
    <li><a href="/danielvlopes/popwindow/issues" highlight="issues">Issues (0)</a></li>
  

  
    
    <li><a href="/danielvlopes/popwindow/downloads">Downloads (0)</a></li>
  

  
    
    <li><a href="http://wiki.github.com/danielvlopes/popwindow/">Wiki (1)</a></li>
  

  <li><a href="/danielvlopes/popwindow/graphs" highlight="repo_graphs">Graphs</a></li>

  <li class="contextswitch nochoices">
    <span class="toggle leftwards" >
      <em>Branch:</em>
      <code>master</code>
    </span>
  </li>
</ul>

<div style="display:none" id="pl-description"><p><em class="placeholder">click here to add a description</em></p></div>
<div style="display:none" id="pl-homepage"><p><em class="placeholder">click here to add a homepage</em></p></div>

<div class="subnav-bar">
  
  <ul>
    <li>
      <a href="#" class="dropdown">Switch Branches (1)</a>
      <ul>
        
          
            <li><strong>master &#x2713;</strong></li>
            
      </ul>
    </li>
    <li>
      <a href="#" class="dropdown defunct">Switch Tags (0)</a>
      
    </li>
    <li><a href="/danielvlopes/popwindow/branches" class="manage">Branch List</a></li>
  </ul>
</div>









        
    <div id="repo_details" class="metabox clearfix ">
      <div id="repo_details_loader" class="metabox-loader" style="display:none">Sending Request&hellip;</div>

      
        <a href="#pledgie_box" rel="facebox" title="Brought to you by pledgie.com" class="pledgie pledgie-button for-owner tooltipped" id="activate_pledgie_button" style="display:none"><span>Enable Donations</span></a>
      
      

      <div id="pledgie_box" style="display:none">
        <h2>Pledgie Donations</h2>
        <form action="/danielvlopes/popwindow/edit/donate" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="d582b2b66742d24273d4f5a0c8612bf3bf4056ee" /></div>
          <dl class="form miniform">
            <dt><label>Paypal Email</label></dt>
            <dd><input type="text" id="paypal" name="paypal" /></dd>
          </dl>
          <div class="form-actions">
            
            <button type="submit" class="minibutton"><span>Activate Donations</span></button>
          </div>
        </form>
        <div class="rule"></div>
        Once activated, we'll place the following badge in your repository's detail box:
        <div style="text-align:center">
          <img alt="Pledgie_example" src="http://assets1.github.com/images/modules/pagehead/pledgie_example.jpg?231e2dafc0eb235c629e916b19b313c7c5913350" />
        </div>
        This service is courtesy of <a href="http://pledgie.com">Pledgie</a>.
      </div>

      <div id="repository_description" rel="repository_description_edit">
        
          <p>Easy way to show hidden div as tooltip style window ( simple substitution for lightbox, modal and etc)
            <span id="read_more" style="display:none">&mdash; <a href="#readme">Read more</a></span>
          </p>
        
      </div>
      <div id="repository_description_edit" style="display:none;" class="inline-edit">
        <form action="/danielvlopes/popwindow/edit/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="d582b2b66742d24273d4f5a0c8612bf3bf4056ee" /></div>
          <input type="hidden" name="field" value="repository_description">
          <input type="text" class="textfield" name="value" value="Easy way to show hidden div as tooltip style window ( simple substitution for lightbox, modal and etc)">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>

      
      <div class="repository-homepage" id="repository_homepage" rel="repository_homepage_edit">
        <p><a href="http://www.areacriacoes.com.br" rel="nofollow">www.areacriacoes.com.br</a></p>
      </div>
      <div id="repository_homepage_edit" style="display:none;" class="inline-edit">
        <form action="/danielvlopes/popwindow/edit/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="d582b2b66742d24273d4f5a0c8612bf3bf4056ee" /></div>
          <input type="hidden" name="field" value="repository_homepage">
          <input type="text" class="textfield" name="value" value="www.areacriacoes.com.br">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>

      <div class="rule "></div>

      <div id="url_box" class="url-box">
        <ul class="clone-urls">
          <li id="private_clone_url" style="display:none"><a href="git@github.com:danielvlopes/popwindow.git" data-permissions="Read+Write">Private</a></li>
          
            <li id="public_clone_url"><a href="git://github.com/danielvlopes/popwindow.git" data-permissions="Read-Only">Read-Only</a></li>
            <li id="http_clone_url"><a href="http://github.com/danielvlopes/popwindow.git" data-permissions="Read-Only">HTTP Read-Only</a></li>
          
        </ul>
        <input type="text" spellcheck="false" id="url_field" class="url-field" />
              <span style="display:none" id="url_box_clippy"></span>
      <span id="clippy_tooltip_url_box_clippy" class="clippy-tooltip tooltipped" title="copy to clipboard">
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="14"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=url_box_clippy&amp;copied=&amp;copyto=">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="/flash/clippy.swf?v5"
             width="14"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=url_box_clippy&amp;copied=&amp;copyto="
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      </span>

        <p id="url_description">This URL has <strong>Read+Write</strong> access</p>
      </div>
    </div>


      </div><!-- /.pagehead -->

      









<script type="text/javascript">
  GitHub.currentCommitRef = "master"
  GitHub.currentRepoOwner = "danielvlopes"
  GitHub.currentRepo = "popwindow"
  GitHub.downloadRepo = '/danielvlopes/popwindow/archives/master'
  
    GitHub.hasWriteAccess = false
    GitHub.watchingRepo = false
    GitHub.ignoredRepo = false
    GitHub.hasForkOfRepo = ""
    GitHub.hasForked = false
  

  
</script>










  <div id="commit">
    <div class="group">
        
  <div class="envelope commit">
    <div class="human">
      
        <div class="message"><pre><a href="/danielvlopes/popwindow/commit/b6969d9f600608a7733776fde4d9dba50a47b902">add return false in click</a> </pre></div>
      

      <div class="actor">
        <div class="gravatar">
          
          <img alt="" height="30" src="http://www.gravatar.com/avatar/89e57a28dfdb85e07b33f92783dbe349?s=30&amp;d=http%3A%2F%2Fgithub.com%2Fimages%2Fgravatars%2Fgravatar-30.png" width="30" />
        </div>
        <div class="name"><a href="/danielvlopes">danielvlopes</a> <span>(author)</span></div>
        <div class="date">
          <abbr class="relatize" title="2010-02-18 14:06:02">Thu Feb 18 14:06:02 -0800 2010</abbr>
        </div>
      </div>

      

    </div>
    <div class="machine">
      <span>c</span>ommit&nbsp;&nbsp;<a href="/danielvlopes/popwindow/commit/b6969d9f600608a7733776fde4d9dba50a47b902" hotkey="c">b6969d9f600608a7733776fde4d9dba50a47b902</a><br />
      <span>t</span>ree&nbsp;&nbsp;&nbsp;&nbsp;<a href="/danielvlopes/popwindow/tree/b6969d9f600608a7733776fde4d9dba50a47b902" hotkey="t">9aceb462f38b952dc1c19129bfc82c7222b907a4</a><br />
      
        <span>p</span>arent&nbsp;
        
        <a href="/danielvlopes/popwindow/tree/477c2ca6a8ad13ede42c75248810dd0dd9c7f9dc" hotkey="p">477c2ca6a8ad13ede42c75248810dd0dd9c7f9dc</a>
      

    </div>
  </div>

    </div>
  </div>



  
    <div id="path">
      <b><a href="/danielvlopes/popwindow/tree/master">popwindow</a></b> / jquery.bgiframe.js       <span style="display:none" id="clippy_1546">jquery.bgiframe.js</span>
      
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="110"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=clippy_1546&amp;copied=copied!&amp;copyto=copy to clipboard">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="/flash/clippy.swf?v5"
             width="110"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=clippy_1546&amp;copied=copied!&amp;copyto=copy to clipboard"
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      

    </div>

    <div id="files">
      <div class="file">
        <div class="meta">
          <div class="info">
            <span>100755</span>
            <span>10 lines (10 sloc)</span>
            <span>1.402 kb</span>
          </div>
          <div class="actions">
            
              <a style="display:none;" id="file-edit-link" href="#" rel="/danielvlopes/popwindow/file-edit/__ref__/jquery.bgiframe.js">edit</a>
            
            <a href="/danielvlopes/popwindow/raw/master/jquery.bgiframe.js" id="raw-url">raw</a>
            
              <a href="/danielvlopes/popwindow/blame/master/jquery.bgiframe.js">blame</a>
            
            <a href="/danielvlopes/popwindow/commits/master/jquery.bgiframe.js">history</a>
          </div>
        </div>
        
  <div class="data syntax type-js">
    
      <table cellpadding="0" cellspacing="0">
        <tr>
          <td>
            
            <pre class="line_numbers">
<span id="LID1" rel="#L1">1</span>
<span id="LID2" rel="#L2">2</span>
<span id="LID3" rel="#L3">3</span>
<span id="LID4" rel="#L4">4</span>
<span id="LID5" rel="#L5">5</span>
<span id="LID6" rel="#L6">6</span>
<span id="LID7" rel="#L7">7</span>
<span id="LID8" rel="#L8">8</span>
<span id="LID9" rel="#L9">9</span>
<span id="LID10" rel="#L10">10</span>
</pre>
          </td>
          <td width="100%">
            
              <div class="highlight"><pre><div class="line" id="LC1"><span class="cm">/* Copyright (c) 2006 Brandon Aaron (http://brandonaaron.net)</span></div><div class="line" id="LC2"><span class="cm"> * Dual licensed under the MIT (http://www.opensource.org/licenses/mit-license.php) </span></div><div class="line" id="LC3"><span class="cm"> * and GPL (http://www.opensource.org/licenses/gpl-license.php) licenses.</span></div><div class="line" id="LC4"><span class="cm"> *</span></div><div class="line" id="LC5"><span class="cm"> * $LastChangedDate: 2007-07-21 18:45:56 -0500 (Sat, 21 Jul 2007) $</span></div><div class="line" id="LC6"><span class="cm"> * $Rev: 2447 $</span></div><div class="line" id="LC7"><span class="cm"> *</span></div><div class="line" id="LC8"><span class="cm"> * Version 2.1.1</span></div><div class="line" id="LC9"><span class="cm"> */</span></div><div class="line" id="LC10"><span class="p">(</span><span class="kd">function</span><span class="p">(</span><span class="nx">$</span><span class="p">){</span><span class="nx">$</span><span class="p">.</span><span class="nx">fn</span><span class="p">.</span><span class="nx">bgIframe</span><span class="o">=</span><span class="nx">$</span><span class="p">.</span><span class="nx">fn</span><span class="p">.</span><span class="nx">bgiframe</span><span class="o">=</span><span class="kd">function</span><span class="p">(</span><span class="nx">s</span><span class="p">){</span><span class="k">if</span><span class="p">(</span><span class="nx">$</span><span class="p">.</span><span class="nx">browser</span><span class="p">.</span><span class="nx">msie</span><span class="o">&amp;&amp;</span><span class="sr">/6.0/</span><span class="p">.</span><span class="nx">test</span><span class="p">(</span><span class="nx">navigator</span><span class="p">.</span><span class="nx">userAgent</span><span class="p">)){</span><span class="nx">s</span><span class="o">=</span><span class="nx">$</span><span class="p">.</span><span class="nx">extend</span><span class="p">({</span><span class="nx">top</span><span class="o">:</span><span class="s1">&#39;auto&#39;</span><span class="p">,</span><span class="nx">left</span><span class="o">:</span><span class="s1">&#39;auto&#39;</span><span class="p">,</span><span class="nx">width</span><span class="o">:</span><span class="s1">&#39;auto&#39;</span><span class="p">,</span><span class="nx">height</span><span class="o">:</span><span class="s1">&#39;auto&#39;</span><span class="p">,</span><span class="nx">opacity</span><span class="o">:</span><span class="kc">true</span><span class="p">,</span><span class="nx">src</span><span class="o">:</span><span class="s1">&#39;javascript:false;&#39;</span><span class="p">},</span><span class="nx">s</span><span class="o">||</span><span class="p">{});</span><span class="kd">var</span> <span class="nx">prop</span><span class="o">=</span><span class="kd">function</span><span class="p">(</span><span class="nx">n</span><span class="p">){</span><span class="k">return</span> <span class="nx">n</span><span class="o">&amp;&amp;</span><span class="nx">n</span><span class="p">.</span><span class="nx">constructor</span><span class="o">==</span><span class="nb">Number</span><span class="o">?</span><span class="nx">n</span><span class="o">+</span><span class="s1">&#39;px&#39;</span><span class="o">:</span><span class="nx">n</span><span class="p">;},</span><span class="nx">html</span><span class="o">=</span><span class="s1">&#39;&lt;iframe class=&quot;bgiframe&quot;frameborder=&quot;0&quot;tabindex=&quot;-1&quot;src=&quot;&#39;</span><span class="o">+</span><span class="nx">s</span><span class="p">.</span><span class="nx">src</span><span class="o">+</span><span class="s1">&#39;&quot;&#39;</span><span class="o">+</span><span class="s1">&#39;style=&quot;display:block;position:absolute;z-index:-1;&#39;</span><span class="o">+</span><span class="p">(</span><span class="nx">s</span><span class="p">.</span><span class="nx">opacity</span><span class="o">!==</span><span class="kc">false</span><span class="o">?</span><span class="s1">&#39;filter:Alpha(Opacity=\&#39;0\&#39;);&#39;</span><span class="o">:</span><span class="s1">&#39;&#39;</span><span class="p">)</span><span class="o">+</span><span class="s1">&#39;top:&#39;</span><span class="o">+</span><span class="p">(</span><span class="nx">s</span><span class="p">.</span><span class="nx">top</span><span class="o">==</span><span class="s1">&#39;auto&#39;</span><span class="o">?</span><span class="s1">&#39;expression(((parseInt(this.parentNode.currentStyle.borderTopWidth)||0)*-1)+\&#39;px\&#39;)&#39;</span><span class="o">:</span><span class="nx">prop</span><span class="p">(</span><span class="nx">s</span><span class="p">.</span><span class="nx">top</span><span class="p">))</span><span class="o">+</span><span class="s1">&#39;;&#39;</span><span class="o">+</span><span class="s1">&#39;left:&#39;</span><span class="o">+</span><span class="p">(</span><span class="nx">s</span><span class="p">.</span><span class="nx">left</span><span class="o">==</span><span class="s1">&#39;auto&#39;</span><span class="o">?</span><span class="s1">&#39;expression(((parseInt(this.parentNode.currentStyle.borderLeftWidth)||0)*-1)+\&#39;px\&#39;)&#39;</span><span class="o">:</span><span class="nx">prop</span><span class="p">(</span><span class="nx">s</span><span class="p">.</span><span class="nx">left</span><span class="p">))</span><span class="o">+</span><span class="s1">&#39;;&#39;</span><span class="o">+</span><span class="s1">&#39;width:&#39;</span><span class="o">+</span><span class="p">(</span><span class="nx">s</span><span class="p">.</span><span class="nx">width</span><span class="o">==</span><span class="s1">&#39;auto&#39;</span><span class="o">?</span><span class="s1">&#39;expression(this.parentNode.offsetWidth+\&#39;px\&#39;)&#39;</span><span class="o">:</span><span class="nx">prop</span><span class="p">(</span><span class="nx">s</span><span class="p">.</span><span class="nx">width</span><span class="p">))</span><span class="o">+</span><span class="s1">&#39;;&#39;</span><span class="o">+</span><span class="s1">&#39;height:&#39;</span><span class="o">+</span><span class="p">(</span><span class="nx">s</span><span class="p">.</span><span class="nx">height</span><span class="o">==</span><span class="s1">&#39;auto&#39;</span><span class="o">?</span><span class="s1">&#39;expression(this.parentNode.offsetHeight+\&#39;px\&#39;)&#39;</span><span class="o">:</span><span class="nx">prop</span><span class="p">(</span><span class="nx">s</span><span class="p">.</span><span class="nx">height</span><span class="p">))</span><span class="o">+</span><span class="s1">&#39;;&#39;</span><span class="o">+</span><span class="s1">&#39;&quot;/&gt;&#39;</span><span class="p">;</span><span class="k">return</span> <span class="k">this</span><span class="p">.</span><span class="nx">each</span><span class="p">(</span><span class="kd">function</span><span class="p">(){</span><span class="k">if</span><span class="p">(</span><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;&gt; iframe.bgiframe&#39;</span><span class="p">,</span><span class="k">this</span><span class="p">).</span><span class="nx">length</span><span class="o">==</span><span class="mi">0</span><span class="p">)</span><span class="k">this</span><span class="p">.</span><span class="nx">insertBefore</span><span class="p">(</span><span class="nb">document</span><span class="p">.</span><span class="nx">createElement</span><span class="p">(</span><span class="nx">html</span><span class="p">),</span><span class="k">this</span><span class="p">.</span><span class="nx">firstChild</span><span class="p">);});}</span><span class="k">return</span> <span class="k">this</span><span class="p">;};})(</span><span class="nx">jQuery</span><span class="p">);</span></div></pre></div>
            
          </td>
        </tr>
      </table>
    
  </div>


      </div>
    </div>

  


    </div>
  
      

      <div class="push"></div>
    </div>

    <div id="footer">
      <div class="site">
        <div class="info">
          <div class="links">
            <a href="http://github.com/blog"><b>Blog</b></a> |
            <a href="http://support.github.com/">Support</a> |
            <a href="http://github.com/training">Training</a> |
            <a href="http://github.com/contact">Contact</a> |
            <a href="http://develop.github.com">API</a> |
            <a href="http://status.github.com">Status</a> |
            <a href="http://twitter.com/github">Twitter</a> |
            <a href="http://help.github.com">Help</a> |
            <a href="http://github.com/security">Security</a>
          </div>
          <div class="company">
            &copy;
            2010
            <span id="_rrt" title="0.16375s from fe1.rs.github.com">GitHub</span> Inc.
            All rights reserved. |
            <a href="/site/terms">Terms of Service</a> |
            <a href="/site/privacy">Privacy Policy</a>
          </div>
        </div>
        <div class="sponsor">
          <div>
            Powered by the <a href="http://www.rackspace.com ">Dedicated
            Servers</a> and<br/> <a href="http://www.rackspacecloud.com">Cloud
            Computing</a> of Rackspace Hosting<span>&reg;</span>
          </div>
          <a href="http://www.rackspace.com">
            <img alt="Dedicated Server" src="http://assets0.github.com/images/modules/footer/rackspace_logo.png?231e2dafc0eb235c629e916b19b313c7c5913350" />
          </a>
        </div>
      </div>
    </div>

    <script>window._auth_token = "d582b2b66742d24273d4f5a0c8612bf3bf4056ee"</script>
    
    
  </body>
</html>

